package by.sysadmins.callscript;

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

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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

class GoogleSpreadsheetManager {
    private static final Logger LOG = LoggerFactory.getLogger(GoogleSpreadsheetManager.class);
    private static final DateFormat DATE_FORMAT = new SimpleDateFormat("dd.MM.yy HH:mm:ss");
    private static final String APPLICATION_NAME = "CallScript by sysadmins.by";
    private static final String SPREADSHEET_ID = "1xgdRAAc5W25TCWMkPJ9RQkBhs0Ox7laAC9ZcH2pd1Hs";
    private static final String SPREADSHEET_RANGE = "A%d:AK";
    private static final File DATA_STORE_DIR = new File(System.getProperty("user.home"), ".credentials/sheets.googleapis.com-java-quickstart");
    private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();
    private static final List<String> SCOPES = Collections.singletonList(SheetsScopes.SPREADSHEETS);
    private static HttpTransport HTTP_TRANSPORT;
    private static FileDataStoreFactory DATA_STORE_FACTORY;

    static {
        try {
            HTTP_TRANSPORT = GoogleNetHttpTransport.newTrustedTransport();
            DATA_STORE_FACTORY = new FileDataStoreFactory(DATA_STORE_DIR);
        } catch (Throwable t) {
            t.printStackTrace();
            System.exit(1);
        }
    }

    static boolean insert(FormEntity formEntity) {
        try {
            Sheets service = getSheetsService();

            // hack for correct adding rows if filter is enabled
            int numRows = findAll(service).getValues().size();
            String range = String.format(SPREADSHEET_RANGE, numRows + 1);
            LOG.debug("I want to add new row to {}", range);

            AppendValuesResponse response = service.spreadsheets().values()
                    .append(SPREADSHEET_ID, range, convertToRows(formEntity))
                    .setValueInputOption("RAW")
                    .setInsertDataOption("INSERT_ROWS")
                    .execute();
            LOG.debug("Row was added to {}", response.getUpdates().getUpdatedRange());
        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
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

    private static ValueRange convertToRows(FormEntity formEntity) {
        String currentDate = DATE_FORMAT.format(new Date());

        List<Object> row = new ArrayList<>();
        row.add(currentDate);
        row.add(setValue(formEntity.getPhoneNumber()));
        row.add(setValue(formEntity.getGender()));
        row.add(setValue(formEntity.getAge()));
        row.add(setValue(formEntity.getLastMonthListen()));
        row.add(setValue(formEntity.getWhatRadioListenLastMonth()));
        row.add(setValue(formEntity.getWhatRadioListenLastWeek()));
        row.add(setValue(formEntity.getYesterdayListen()));
        row.add(setValue(formEntity.getWhereListen1()));
        row.add(setValue(formEntity.getTimeInterval1()));
        row.add(setValue(formEntity.getWhatRadioListen1()));
        row.add(setValue(formEntity.getWhichDevice1()));

        row.add(setValue(formEntity.getWhereListen2()));
        row.add(setValue(formEntity.getTimeInterval2()));
        row.add(setValue(formEntity.getWhatRadioListen2()));
        row.add(setValue(formEntity.getWhichDevice2()));

        row.add(setValue(formEntity.getWhereListen3()));
        row.add(setValue(formEntity.getTimeInterval3()));
        row.add(setValue(formEntity.getWhatRadioListen3()));
        row.add(setValue(formEntity.getWhichDevice3()));

        row.add(setValue(formEntity.getWhereListen4()));
        row.add(setValue(formEntity.getTimeInterval4()));
        row.add(setValue(formEntity.getWhatRadioListen4()));
        row.add(setValue(formEntity.getWhichDevice4()));

        row.add(setValue(formEntity.getWhereListen5()));
        row.add(setValue(formEntity.getTimeInterval5()));
        row.add(setValue(formEntity.getWhatRadioListen5()));
        row.add(setValue(formEntity.getWhichDevice5()));

        row.add(setValue(formEntity.getWhereListen6()));
        row.add(setValue(formEntity.getTimeInterval6()));
        row.add(setValue(formEntity.getWhatRadioListen6()));
        row.add(setValue(formEntity.getWhichDevice6()));

        row.add(setValue(formEntity.getEducation()));
        row.add(setValue(formEntity.getProfession()));
        row.add(setValue(formEntity.getOperator()));
        row.add(setValue(formEntity.getCity()));
        row.add(setValue(formEntity.getCauseRefused()));

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
        InputStream in = GoogleSpreadsheetManager.class.getResourceAsStream("/client_secret.json");
        GoogleClientSecrets clientSecrets = GoogleClientSecrets.load(JSON_FACTORY, new InputStreamReader(in));

        // Build flow and trigger user authorization request.
        GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
                HTTP_TRANSPORT, JSON_FACTORY, clientSecrets, SCOPES)
                .setDataStoreFactory(DATA_STORE_FACTORY)
                .setAccessType("offline")
                .build();
        Credential credential = new AuthorizationCodeInstalledApp(flow, new LocalServerReceiver()).authorize("user");
        System.out.println("Credentials saved to " + DATA_STORE_DIR.getAbsolutePath());
        return credential;
    }

    private static String setValue(String string) {
        return string != null ? string : "";
    }
}
