package by.sysadmins.callscript.dto;

import java.util.ArrayList;
import java.util.List;
import lombok.Data;

@Data
public class ValidateTimeRangeDTO {
  private String timeRange;
  private List<String> anotherTimeRanges = new ArrayList<>();
  private String timeOffset;
}
