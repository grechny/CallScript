package by.sysadmins.callscript.validators;

import by.sysadmins.callscript.dto.ValidationResultDTO;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;

@Slf4j
//todo refactor me
public class DateValidator {

  /**
   * The method validate that start time is less then end time The day begin at 05:00 and so a range
   * 06:00 - 01:00 is valid, but a range 01:00 - 06:00 is not valid
   *
   * @param timeRange start and end time range where the delimiter is a dash start and end time must
   * be in hh:mm time format
   * @param anotherTimeRanges list of time ranges. If not empty check that {@param timeRange} is not
   * included to {@param anotherTimeRanges}
   * @return {@link ValidationResultDTO}
   */
  @SneakyThrows
  public static ValidationResultDTO validateTimeRange(String timeRange,
      List<String> anotherTimeRanges, String timeOffset) {
    if (StringUtils.isBlank(timeOffset)) {
      timeOffset = "00:00";
    }
    String errorMessage = null;
    String format = "HH:mm";
    String[] timeArray = timeRange.split("-");
    if (timeArray.length == 2) {
      String startTime = timeArray[0].trim();
      String endTime = timeArray[1].trim();
      if (isValidDateFormat(startTime, format) && isValidDateFormat(endTime, format)) {
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        Date startDayDate = sdf.parse(timeOffset);
        Date startDate = sdf.parse(startTime);
        Date endDate = sdf.parse(endTime);

        Long correctedStartTime = startDate.getTime() - startDayDate.getTime();
        Long correctedEndTime = endDate.getTime() - startDayDate.getTime();

        //add one day if end time less than zero after correction
        if (correctedStartTime < 0) {
          correctedStartTime += 86400000;
        }
        if (correctedEndTime <= 0) {
          correctedEndTime += 86400000;
        }

        if (correctedEndTime > correctedStartTime) {
          if (CollectionUtils.isNotEmpty(anotherTimeRanges)) {
            for (String anotherTimeRange : anotherTimeRanges) {
              if (isTimeEnterInTimeRange(startTime, anotherTimeRange, timeOffset)
                  || isTimeEnterInTimeRange(endTime, anotherTimeRange, timeOffset)) {
                errorMessage = "End time must be greater than start time";
                break;
              }
            }
          }
        } else {
          errorMessage = "End time must be greater than start time";
        }

      } else {
        errorMessage = "Invalid time format";
      }
    } else {
      errorMessage = "Invalid time range format";
    }

    ValidationResultDTO validationResultDTO = new ValidationResultDTO();
    if (StringUtils.isNotBlank(errorMessage)) {
      validationResultDTO.setValid(false);
      validationResultDTO.setErrorMessage(errorMessage);
    } else {
      validationResultDTO.setValid(true);
    }

    return validationResultDTO;
  }

  /**
   * Check if {@param value} is specified in the required format
   *
   * @param value date or time for validate
   * @param format required format (e.g. dd/MM/yyyy hh:mm)
   * @return true if {@param time} is specified in the required format
   */
  public static boolean isValidDateFormat(String value, String format) {
    Date date = null;
    try {
      SimpleDateFormat sdf = new SimpleDateFormat(format);
      date = sdf.parse(value);
      if (!value.equals(sdf.format(date))) {
        date = null;
      }
    } catch (ParseException ex) {
      log.debug("Could not parse {}: {}", value, ex.getMessage());
    }
    return date != null;
  }

  @SneakyThrows
  public static boolean isTimeEnterInTimeRange(String time, String timeRange, String timeOffset) {
    String format = "HH:mm";
    String[] timeArray = timeRange.split("-");
    if (timeArray.length == 2) {
      String startTime = timeArray[0].trim();
      String endTime = timeArray[1].trim();
      if (isValidDateFormat(startTime, format) && isValidDateFormat(endTime, format)) {
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        Date offsetDate = sdf.parse(timeOffset);
        Date startDate = sdf.parse(startTime);
        Date endDate = sdf.parse(endTime);
        Date requestedDate = sdf.parse(time);

        Long correctedStartTime = startDate.getTime() - offsetDate.getTime();
        Long correctedEndTime = endDate.getTime() - offsetDate.getTime();
        Long correctedrequestedTime = requestedDate.getTime() - offsetDate.getTime();

        //add one day if end time less than zero after correction
        if (correctedStartTime < 0) {
          correctedStartTime += 86400000;
        }
        if (correctedEndTime <= 0) {
          correctedEndTime += 86400000;
        }
        if (correctedrequestedTime <= 0) {
          correctedrequestedTime += 86400000;
        }

        return correctedEndTime > correctedStartTime
            && correctedrequestedTime > correctedStartTime
            && correctedrequestedTime < correctedEndTime;

      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
