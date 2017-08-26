package by.sysadmins.callscript.services.google;

import by.sysadmins.callscript.dto.FormWrapper;
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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import javax.annotation.PostConstruct;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class GoogleSpreadsheetService {

  private static String APPLICATION_NAME;
  private static String SPREADSHEET_ID;
  private static String SPREADSHEET_RANGE;
  private static String DATE_FORMAT_PATTERN;
  private static String DATA_STORE_DIR;
  private static List<String> SCOPES;
  private static DateFormat DATE_FORMAT;
  private static JsonFactory JSON_FACTORY;
  private static HttpTransport HTTP_TRANSPORT;
  private static FileDataStoreFactory DATA_STORE_FACTORY;

  public static boolean insert(FormWrapper formEntity) {
    try {
      Sheets service = getSheetsService();

      // hack for correct adding rows if filter is enabled
      int numRows = findAll(service).getValues().size();
      String range = String.format(SPREADSHEET_RANGE, numRows + 1);
      log.debug("I want to add new row to {}", range);

      AppendValuesResponse response = service.spreadsheets().values()
          .append(SPREADSHEET_ID, range, convertToRows(formEntity))
          .setValueInputOption("RAW")
          .setInsertDataOption("INSERT_ROWS")
          .execute();
      log.debug("Row was added to {}", response.getUpdates().getUpdatedRange());
    } catch (Exception e) {
      log.error(e.getMessage(), e);
      return false;
    }

    return true;
  }

  private static ValueRange findAll(Sheets service) throws IOException {
    String range = String.format(SPREADSHEET_RANGE, 1);
    return service.spreadsheets().values()
        .get(SPREADSHEET_ID, range)
        .execute();
  }

  private static ValueRange convertToRows(FormWrapper formDTO) {
    String currentDate = DATE_FORMAT.format(new Date());

    List<Object> row = new ArrayList<>();
    row.add(currentDate);
    row.add(setValue(formDTO.getForm().get("phoneNumber")));
//    row.add(setValue(formDTO.getGender()));
//    row.add(setValue(formDTO.getAge()));
//    row.add(setValue(formDTO.getLastMonthListen()));
//    row.add(setValue(formDTO.getWhatRadioListenLastMonth()));
//    row.add(setValue(formDTO.getWhatRadioListenLastWeek()));
//    row.add(setValue(formDTO.getYesterdayListen()));
//    row.add(setValue(formDTO.getWhereListen1()));
//    row.add(setValue(formDTO.getTimeInterval1()));
//    row.add(setValue(formDTO.getWhatRadioListen1()));
//    row.add(setValue(formDTO.getWhichDevice1()));
//
//    row.add(setValue(formDTO.getWhereListen2()));
//    row.add(setValue(formDTO.getTimeInterval2()));
//    row.add(setValue(formDTO.getWhatRadioListen2()));
//    row.add(setValue(formDTO.getWhichDevice2()));
//
//    row.add(setValue(formDTO.getWhereListen3()));
//    row.add(setValue(formDTO.getTimeInterval3()));
//    row.add(setValue(formDTO.getWhatRadioListen3()));
//    row.add(setValue(formDTO.getWhichDevice3()));
//
//    row.add(setValue(formDTO.getWhereListen4()));
//    row.add(setValue(formDTO.getTimeInterval4()));
//    row.add(setValue(formDTO.getWhatRadioListen4()));
//    row.add(setValue(formDTO.getWhichDevice4()));
//
//    row.add(setValue(formDTO.getWhereListen5()));
//    row.add(setValue(formDTO.getTimeInterval5()));
//    row.add(setValue(formDTO.getWhatRadioListen5()));
//    row.add(setValue(formDTO.getWhichDevice5()));
//
//    row.add(setValue(formDTO.getWhereListen6()));
//    row.add(setValue(formDTO.getTimeInterval6()));
//    row.add(setValue(formDTO.getWhatRadioListen6()));
//    row.add(setValue(formDTO.getWhichDevice6()));
//
//    row.add(setValue(formDTO.getEducation()));
//    row.add(setValue(formDTO.getProfession()));
//    row.add(setValue(formDTO.getOperator()));
//    row.add(setValue(formDTO.getCity()));
//    row.add(setValue(formDTO.getCauseRefused()));

    ValueRange valueRange = new ValueRange();
    valueRange.setValues(Collections.singletonList(row));
    return valueRange;
  }

  private static Sheets getSheetsService() throws IOException {
    Credential credential = authorize();
    return new Sheets.Builder(HTTP_TRANSPORT, JSON_FACTORY, credential)
        .setApplicationName(APPLICATION_NAME).build();
  }

  private static Credential authorize() throws IOException {
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
    log.info("Credentials saved to {}", DATA_STORE_FACTORY.getDataDirectory().getAbsolutePath());
    return credential;
  }

  private static String setValue(String string) {
    return string != null ? string : "";
  }

  @Value("${spring.application.name}")
  public void setApplicationName(String applicationName) {
    APPLICATION_NAME = applicationName;
  }

  @Value("${google.sheets.id}")
  public void setSpreadsheetId(String spreadsheetId) {
    SPREADSHEET_ID = spreadsheetId;
  }

  @Value("${google.sheets.range}")
  public void setSpreadsheetRange(String spreadsheetRange) {
    SPREADSHEET_RANGE = spreadsheetRange;
  }

  @Value("${google.sheets.date_format}")
  public void setDateFormatPattern(String dateFormatPattern) {
    DATE_FORMAT_PATTERN = dateFormatPattern;
  }

  @Value("${google.sheets.data_store_dir}")
  public void setDataStoreDir(String dataStoreDir) {
    DATA_STORE_DIR = dataStoreDir;
  }

  @PostConstruct
  public void init() {
    try {
      DATE_FORMAT = new SimpleDateFormat(DATE_FORMAT_PATTERN);
      JSON_FACTORY = JacksonFactory.getDefaultInstance();
      SCOPES = Collections.singletonList(SheetsScopes.SPREADSHEETS);
      HTTP_TRANSPORT = GoogleNetHttpTransport.newTrustedTransport();
      DATA_STORE_FACTORY = new FileDataStoreFactory(new File(System.getProperty("user.home"), DATA_STORE_DIR));
    } catch (Throwable t) {
      log.error("Error during initialize GoogleSpreadsheetService: {}", t.getMessage());
      System.exit(1);
    }
  }
}
