package by.sysadmins.callscript;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class WebController {

	@GetMapping("/")
	public String index(Map<String, Object> model) {
		model.put("message", "Sysadmins.by");
		return "index";
	}

	@PostMapping("/add")
    public String getCallNumber(HttpServletRequest request, Map<String, Object> model) {
	    String ipAddress = AsteriskManager.getActiveCall(request.getRemoteAddr());
	    model.put("ipAddress", ipAddress);
	    return "added";
    }

}
