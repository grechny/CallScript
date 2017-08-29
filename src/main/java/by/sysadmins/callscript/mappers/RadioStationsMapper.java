package by.sysadmins.callscript.mappers;

import by.sysadmins.callscript.dto.RadioStationsDTO;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import java.io.File;
import java.net.URL;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class RadioStationsMapper {

  private static final String RADIO_STATIONS_MAPPING_FILE_PATH = "configs/radio-station-list.yaml";

  private static RadioStationsDTO radioStations;

  static {
    try {
      URL resourceURL = FieldMapper.class.getClassLoader().getResource(RADIO_STATIONS_MAPPING_FILE_PATH);
      //noinspection ConstantConditions
      File file = new File(resourceURL.getFile());
      ObjectMapper objectMapper = new ObjectMapper(new YAMLFactory());
      radioStations = objectMapper.readValue(file, RadioStationsDTO.class);
    } catch (Exception e) {
      log.error("Could not read file {}", RADIO_STATIONS_MAPPING_FILE_PATH);
      throw new IllegalArgumentException("Could not read file " + RADIO_STATIONS_MAPPING_FILE_PATH, e);
    }
  }

  public static RadioStationsDTO getRadioStations() {
    return radioStations;
  }
}
