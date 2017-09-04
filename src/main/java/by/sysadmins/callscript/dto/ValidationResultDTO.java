package by.sysadmins.callscript.dto;

import lombok.Data;

@Data
public class ValidationResultDTO {

  private boolean valid;
  private String errorMessage;

}
