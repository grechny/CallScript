package by.sysadmins.callscript.validators;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import by.sysadmins.callscript.dto.ValidationResultDTO;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.junit.Test;

public class DateValidatorTest {

  @Test
  public void validateTimeRangeTest() throws Exception {
    ValidationResultDTO validationResult1 = DateValidator.validateTimeRange("01:00 - 06:00", null, "05:00");
    assertFalse(validationResult1.isValid());

    ValidationResultDTO validationResult2 = DateValidator.validateTimeRange("06:00 - 01:00", null, "05:00");
    assertTrue(validationResult2.isValid());

    ValidationResultDTO validationResult3 = DateValidator.validateTimeRange("06:00 - 05:59", null, "05:00");
    assertFalse(validationResult3.isValid());

    ValidationResultDTO validationResult4 = DateValidator.validateTimeRange("16:50 - 23:49", null, "05:00");
    assertTrue(validationResult4.isValid());

    ValidationResultDTO validationResult5 = DateValidator.validateTimeRange("01:00 - 06:00", null, null);
    assertTrue(validationResult5.isValid());

    ValidationResultDTO validationResult6 = DateValidator.validateTimeRange("06:00 - 01:00", null, null);
    assertFalse(validationResult6.isValid());

    ValidationResultDTO validationResult7 = DateValidator.validateTimeRange("06:00 - 01:00", Collections.singletonList("01:00-05:00"), "05:00");
    assertTrue(validationResult7.isValid());

    ValidationResultDTO validationResult8 = DateValidator.validateTimeRange("06:00 - 01:00", Collections.singletonList("00:00 - 05:00"), "05:00");
    assertFalse(validationResult8.isValid());

    List<String> timeRanges = new ArrayList<>();
    timeRanges.add("09:30 - 10:00");
    timeRanges.add("02:30 - 03:00");
    ValidationResultDTO validationResult9 = DateValidator.validateTimeRange("01:00 - 06:00", timeRanges, "05:00");
    assertFalse(validationResult9.isValid());
  }

  @Test
  public void isValidDateFormatTest() throws Exception {
    boolean result1 = DateValidator.isValidDateFormat("01:23", "HH:mm");
    assertTrue(result1);

    boolean result2 = DateValidator.isValidDateFormat("01:23", "HH:MM");
    assertFalse(result2);

    boolean result3 = DateValidator.isValidDateFormat("01.23", "hh:mm");
    assertFalse(result3);

    boolean result4 = DateValidator.isValidDateFormat("25:26", "HH:mm");
    assertFalse(result4);

    boolean result5 = DateValidator.isValidDateFormat("24:00", "HH:mm");
    assertFalse(result5);

    boolean result6 = DateValidator.isValidDateFormat("00:00", "hh:mm");
    assertFalse(result6);

    boolean result7 = DateValidator.isValidDateFormat("00:00", "HH:mm");
    assertTrue(result7);

    boolean result8 = DateValidator.isValidDateFormat("00:60", "HH:mm");
    assertFalse(result8);
  }

  @Test
  public void isTimeEnterInTimeRangeTest() throws Exception {
    boolean result1 = DateValidator.isTimeEnterInTimeRange("00:30", "00:00 - 01:00", "05:00");
    assertTrue(result1);

    boolean result2 = DateValidator.isTimeEnterInTimeRange("00:30", "00:00 - 01:00", "00:00");
    assertTrue(result2);

    boolean result3 = DateValidator.isTimeEnterInTimeRange("10:30", "00:00 - 01:00", "00:00");
    assertFalse(result3);

    boolean result4 = DateValidator.isTimeEnterInTimeRange("01:00", "00:00 - 05:00", "05:00");
    assertTrue(result4);

    boolean result5 = DateValidator.isTimeEnterInTimeRange("05:00", "00:00 - 05:00", "05:00");
    assertFalse(result5);

    boolean result6 = DateValidator.isTimeEnterInTimeRange("00:00", "00:00 - 05:00", "00:00");
    assertFalse(result6);
  }
}