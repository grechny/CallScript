package by.sysadmins.callscript.schedulers;

import by.sysadmins.callscript.services.FormManager;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Slf4j
@Component
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class GoogleSpreadsheetScheduler {

  private final FormManager formManager;

  @Scheduled(fixedRateString = "${google.sheets.sync.interval}")
  public void syncRows() {
    log.debug("Started scheduled task: syncRows");
    formManager.synchronizeForms();
  }

}
