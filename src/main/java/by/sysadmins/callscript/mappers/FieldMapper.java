package by.sysadmins.callscript.mappers;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import java.io.InputStream;
import java.util.Map;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.IOUtils;

@Slf4j
public class FieldMapper {

  private static final String FIELD_MAPPING_FILE_PATH = "configs/fields-mapping.yaml";
  private static final String ARRAY_SIZE_KEY = "array_size";
  private static final String DATE_FIELD_KEY = "date_index";
  private static final String ID_FIELD_KEY = "id_index";

  private static Map<String, Integer> fieldsMap;

  static {
    try (InputStream stream = FieldMapper.class.getClassLoader().getResourceAsStream(FIELD_MAPPING_FILE_PATH)) {
      String streamContent = IOUtils.toString(stream);
      ObjectMapper objectMapper = new ObjectMapper(new YAMLFactory());
      TypeReference<Map<String, Integer>> typeRef = new TypeReference<Map<String, Integer>>() {};
      fieldsMap = objectMapper.readValue(streamContent, typeRef);
    } catch (Exception e) {
      log.error("Could not read file {}", FIELD_MAPPING_FILE_PATH);
      throw new IllegalArgumentException("Could not read file " + FIELD_MAPPING_FILE_PATH, e);
    }
  }

  public static Integer getFieldIndex(String key) {
    return fieldsMap.get(key);
  }

  public static Integer getArraySize() {
    return fieldsMap.get(ARRAY_SIZE_KEY);
  }

  public static Integer getDateFieldIndex() {
    return fieldsMap.get(DATE_FIELD_KEY);
  }

  public static Integer getIdFieldIndex() {
    return fieldsMap.get(ID_FIELD_KEY);
  }
}
