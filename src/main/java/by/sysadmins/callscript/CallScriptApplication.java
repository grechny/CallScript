package by.sysadmins.callscript;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class CallScriptApplication extends SpringBootServletInitializer {

  public static void main(String[] args) throws Exception {
    SpringApplication.run(CallScriptApplication.class, args);
  }

  @Override
  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
    return application.sources(CallScriptApplication.class);
  }
}