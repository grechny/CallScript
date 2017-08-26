package by.sysadmins.callscript.services;

import by.sysadmins.callscript.entities.FormEntity;
import by.sysadmins.callscript.repositories.FormRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class FormManager {

  private final FormRepository formRepository;
  private final ObjectMapper objectMapper;

  @SneakyThrows
  public FormEntity saveForm(Map<String, String> form) {
    form.values().removeIf(StringUtils::isBlank);
    String jsonResult = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(form);
    return formRepository.save(new FormEntity(jsonResult));
  }

  @SneakyThrows
  public List<Object> getAllForms() {
    List<Object> results = new ArrayList<>();
    Iterable<FormEntity> formEntities = formRepository.findAll();
    for (FormEntity formEntity : formEntities) {
      Map form = objectMapper.readValue(formEntity.getForm(), Map.class);
      results.add(form);
    }
    return results;
  }

  public boolean uploadToExternalSystem (String startDate, String endDate) {
    return false;
  }
}
