package by.sysadmins.callscript.web;

import by.sysadmins.callscript.dto.FormDTO;
import by.sysadmins.callscript.entities.FormEntity;
import by.sysadmins.callscript.services.FormManager;
import by.sysadmins.callscript.services.asterisk.AsteriskService;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Slf4j
@Controller
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class WebController {

  private final FormManager formManager;

  @GetMapping("/")
  public String index(Map<String, Object> model) {
    model.put("formDTO", new FormDTO());
    return "index";
  }

  @GetMapping("/getNumber")
  public ResponseEntity getPhoneNumber(HttpServletRequest request) {
    String phoneNumber = AsteriskService.getActiveCall(request.getRemoteAddr());
    return ResponseEntity.ok(phoneNumber);
  }

  @PostMapping("/add")
  public String addEntry(FormDTO formDTO) {
    log.debug("Got new filled form: {}", formDTO.getForm());
    FormEntity result = formManager.saveForm(formDTO);
    return result != null ? "added" : "error";
  }

  @GetMapping("/showAll")
  public ResponseEntity showEntries() {
    return ResponseEntity.ok(formManager.getAllForms());
  }

  @GetMapping("/upload")
  public ResponseEntity uploadToExternalSystem(
      @RequestParam(required = false) String startDate,
      @RequestParam(required = false) String endDate) {

    return formManager.uploadFormToExternalSystem(startDate, endDate)
        ? ResponseEntity.ok().build()
        : ResponseEntity.status(HttpStatus.UNAVAILABLE_FOR_LEGAL_REASONS).build();
  }
}
