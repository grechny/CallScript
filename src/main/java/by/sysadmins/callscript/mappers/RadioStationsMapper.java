package by.sysadmins.callscript.mappers;

import by.sysadmins.callscript.dto.RadioStationsDTO;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import java.io.InputStream;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.IOUtils;

@Slf4j
public class RadioStationsMapper {

  private static final String RADIO_STATIONS_MAPPING_FILE_PATH = "configs/radio-station-list.yaml";

  private static RadioStationsDTO radioStations;

  static {
    try (InputStream stream = RadioStationsMapper.class.getClassLoader().getResourceAsStream(RADIO_STATIONS_MAPPING_FILE_PATH)) {
      String streamContent = IOUtils.toString(stream);
      ObjectMapper objectMapper = new ObjectMapper(new YAMLFactory());
      radioStations = objectMapper.readValue(streamContent, RadioStationsDTO.class);
    } catch (Exception e) {
      log.error("Could not read file {}", RADIO_STATIONS_MAPPING_FILE_PATH);
      throw new IllegalArgumentException("Could not read file " + RADIO_STATIONS_MAPPING_FILE_PATH, e);
    }
  }

  public static RadioStationsDTO getRadioStations() {
    return radioStations;
  }
}
