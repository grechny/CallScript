package by.sysadmins.callscript.converters;

import by.sysadmins.callscript.dto.FormDTO;
import by.sysadmins.callscript.entities.FormEntity;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.Map;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
@Slf4j
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class FormConverter {

  private final ObjectMapper objectMapper;

  @SneakyThrows
  public FormDTO convertToDTO (FormEntity formEntity) {
    log.debug("Start converting form entity {} to dto", formEntity);
    FormDTO formDTO = new FormDTO();
    formDTO.setId(formEntity.getId());
    formDTO.setCreatedDate(formEntity.getDate());
    formDTO.setUploaded(formEntity.isUploaded());

    TypeReference<Map<String,String>> typeRef = new TypeReference<Map<String,String>>() {};
    Map<String, String> form = objectMapper.readValue(formEntity.getForm(), typeRef);
    formDTO.setForm(form);

    log.debug("Converted DTO is {}", formDTO);
    return formDTO;
  }

  @SneakyThrows
  public FormEntity convertToEntity(FormDTO formDTO) {
    log.debug("Start converting form dto {} to entity", formDTO);
    FormEntity formEntity = new FormEntity();
    formEntity.setId(formDTO.getId());
    formEntity.setDate(formDTO.getCreatedDate());
    formEntity.setUploaded(formDTO.isUploaded());

    if (MapUtils.isNotEmpty(formDTO.getForm())) {
      formDTO.getForm().values().removeIf(StringUtils::isBlank);
      String serializedResult = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(formDTO.getForm());
      formEntity.setForm(serializedResult);
    }

    log.debug("Converted entity is {}", formEntity);
    return formEntity;
  }
}
