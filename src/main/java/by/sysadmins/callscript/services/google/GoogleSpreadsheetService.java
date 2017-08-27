package by.sysadmins.callscript.services.google;

import by.sysadmins.callscript.dto.FormDTO;
import by.sysadmins.callscript.services.FieldMapper;
import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.extensions.java6.auth.oauth2.AuthorizationCodeInstalledApp;
import com.google.api.client.extensions.jetty.auth.oauth2.LocalServerReceiver;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.util.store.FileDataStoreFactory;
import com.google.api.services.sheets.v4.Sheets;
import com.google.api.services.sheets.v4.SheetsScopes;
import com.google.api.services.sheets.v4.model.AppendValuesResponse;
import com.google.api.services.sheets.v4.model.ValueRange;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class GoogleSpreadsheetService {

  @Value("${spring.application.name}")
  private String APPLICATION_NAME;

  @Value("${google.sheets.id}")
  private String SPREADSHEET_ID;

  @Value("${google.sheets.range}")
  private String SPREADSHEET_RANGE;

  @Value("${google.sheets.data_store_dir}")
  private String DATA_STORE_DIR;

  private List<String> SCOPES;
  private JsonFactory JSON_FACTORY;
  private HttpTransport HTTP_TRANSPORT;
  private FileDataStoreFactory DATA_STORE_FACTORY;

  @PostConstruct
  public void init() {
    try {
      JSON_FACTORY = JacksonFactory.getDefaultInstance();
      SCOPES = Collections.singletonList(SheetsScopes.SPREADSHEETS);
      HTTP_TRANSPORT = GoogleNetHttpTransport.newTrustedTransport();
      DATA_STORE_FACTORY = new FileDataStoreFactory(new File(System.getProperty("user.home"), DATA_STORE_DIR));
    } catch (Throwable t) {
      log.error("Error during initialize GoogleSpreadsheetService: {}", t.getMessage());
      System.exit(1);
    }
  }

  public synchronized boolean insert(FormDTO formDTO) {
    try {
      Sheets service = getSheetsService();

      // hack for correct adding rows if filter is enabled
      int numRows = findAll(service).getValues().size();
      String range = String.format(SPREADSHEET_RANGE, numRows + 1);
      log.debug("I want to add new row to {}", range);

      AppendValuesResponse response = service.spreadsheets().values()
          .append(SPREADSHEET_ID, range, convertToRows(formDTO))
          .setValueInputOption("RAW")
          .setInsertDataOption("INSERT_ROWS")
          .execute();
      log.info("Row was added to {}", response.getUpdates().getUpdatedRange());
    } catch (Exception e) {
      log.error(e.getMessage(), e);
      return false;
    }

    return true;
  }

  private ValueRange findAll(Sheets service) throws IOException {
    String range = String.format(SPREADSHEET_RANGE, 1);
    return service.spreadsheets().values()
        .get(SPREADSHEET_ID, range)
        .execute();
  }

  private ValueRange convertToRows(FormDTO formDTO) {
    Object[] array = new Object[FieldMapper.getArraySize()];
    // hack for google api: it ignored null values (why???)
    for (int i = 0; i < FieldMapper.getArraySize(); i++) {
      array[i] = "";
    }
    List<Object> row = Arrays.asList(array);

    // set date
    row.set(FieldMapper.getDateFieldIndex() - 1, formDTO.getCreatedDate());

    Map<String, String> form = formDTO.getForm();
    for (String key : form.keySet()) {
      Integer fieldIndex = FieldMapper.getFieldIndex(key);
      if (fieldIndex != null) {
        row.set(fieldIndex - 1, form.get(key));
      }
    }

    ValueRange valueRange = new ValueRange();
    valueRange.setValues(Collections.singletonList(row));
    return valueRange;
  }

  private Sheets getSheetsService() throws IOException {
    Credential credential = authorize();
    return new Sheets.Builder(HTTP_TRANSPORT, JSON_FACTORY, credential)
        .setApplicationName(APPLICATION_NAME).build();
  }

  private Credential authorize() throws IOException {
    // Load client secrets.
    InputStream in = GoogleSpreadsheetService.class.getResourceAsStream("/client_secret.json");
    GoogleClientSecrets clientSecrets = GoogleClientSecrets.load(JSON_FACTORY, new InputStreamReader(in));

    // Build flow and trigger user authorization request.
    GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
        HTTP_TRANSPORT, JSON_FACTORY, clientSecrets, SCOPES)
        .setDataStoreFactory(DATA_STORE_FACTORY)
        .setAccessType("offline")
        .build();
    Credential credential = new AuthorizationCodeInstalledApp(flow, new LocalServerReceiver()).authorize("user");
    log.debug("Credentials saved to {}", DATA_STORE_FACTORY.getDataDirectory().getAbsolutePath());
    return credential;
  }
}