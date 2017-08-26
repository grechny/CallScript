package by.sysadmins.callscript;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.data.jpa.convert.threeten.Jsr310JpaConverters;

//for jsr310 java 8 java.time.*
@EntityScan(basePackageClasses = {CallScriptApplication.class, Jsr310JpaConverters.class})
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

