package by.sysadmins.callscript.web;

import by.sysadmins.callscript.dto.FormDTO;
import by.sysadmins.callscript.entities.FormEntity;
import by.sysadmins.callscript.services.DataBaseService;
import by.sysadmins.callscript.services.asterisk.AsteriskService;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Slf4j
@Controller
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class WebController {

  private final DataBaseService dataBaseService;

  @GetMapping("/")
  public String index(Map<String, Object> model) {
    model.put("formEntity", new FormDTO());
    return "index";
  }

  @GetMapping("/getNumber")
  public ResponseEntity getPhoneNumber(HttpServletRequest request) {
    String phoneNumber = AsteriskService.getActiveCall(request.getRemoteAddr());
    return ResponseEntity.ok(phoneNumber);
  }

  @PostMapping("/add")
  public String addEntry(Map<String, String> form) {
    log.debug("Got new filled FormEntity: {}", form);
    FormEntity result = dataBaseService.saveForm(form);
    return result != null ? "added" : "error";
  }
}
