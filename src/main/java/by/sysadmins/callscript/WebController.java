package by.sysadmins.callscript;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

@Controller
public class WebController {
    private static final Logger LOG = LoggerFactory.getLogger(WebController.class);

    @GetMapping("/")
    public String index(Map<String, Object> model) {
        model.put("formEntity", new FormEntity());
        return "index";
    }

    @GetMapping("/getNumber")
    public ResponseEntity getPhoneNumber(HttpServletRequest request) {
        String phoneNumber = AsteriskManager.getActiveCall(request.getRemoteAddr());
        return ResponseEntity.ok(phoneNumber);
    }

    @PostMapping("/add")
    public String addEntry(FormEntity formEntity) {
        LOG.debug("Got new filled FormEntity: {}", formEntity);
        boolean result = GoogleSpreadsheetManager.insert(formEntity);
        return result ? "added" : "error";
    }
}
