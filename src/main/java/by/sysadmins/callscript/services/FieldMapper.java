package by.sysadmins.callscript.services;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import java.io.File;
import java.net.URL;
import java.util.Map;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class FieldMapper {

  private static final String FIELD_MAPPING_FILE_PATH = "fields-mapping.yaml";
  private static final String ARRAY_SIZE_KEY = "array_size";
  private static final String DATE_FIELD_KEY = "date_index";
  private static final String ID_FIELD_KEY = "id_index";

  private static Map<String, Integer> fieldsMap;

  static {
    try {
      URL resourceURL = FieldMapper.class.getClassLoader().getResource(FIELD_MAPPING_FILE_PATH);
      //noinspection ConstantConditions
      File file = new File(resourceURL.getFile());
      ObjectMapper objectMapper = new ObjectMapper(new YAMLFactory());
      TypeReference<Map<String, Integer>> typeRef = new TypeReference<Map<String, Integer>>() {};
      fieldsMap = objectMapper.readValue(file, typeRef);
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
