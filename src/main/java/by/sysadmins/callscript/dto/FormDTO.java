package by.sysadmins.callscript.dto;

import java.util.Date;
import java.util.Map;
import lombok.Data;

@Data
public class FormDTO {

  private Long id;
  private Date createdDate;
  private Map<String, String> form;
  private boolean uploaded;
}
