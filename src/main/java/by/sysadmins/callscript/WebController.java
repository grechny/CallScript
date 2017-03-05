package by.sysadmins.callscript;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

@Controller
public class WebController {

    @GetMapping("/")
    public String index(Map<String, Object> model) {
        model.put("message", "Sysadmins.by");
        return "index";
    }

    @GetMapping("/getNumber")
    public ResponseEntity getPhoneNumber(HttpServletRequest request) {
        String phoneNumber = AsteriskManager.getActiveCall(request.getRemoteAddr());
        return ResponseEntity.ok(phoneNumber);
    }

    @PostMapping("/add")
    public String addEntry() {
        return "added";
    }

}
