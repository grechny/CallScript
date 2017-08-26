package by.sysadmins.callscript.services;

import by.sysadmins.callscript.entities.FormEntity;
import by.sysadmins.callscript.repositories.FormRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.Map;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class DataBaseService {

  private final FormRepository formRepository;
  private final ObjectMapper objectMapper;

  @SneakyThrows
  public FormEntity saveForm(Map<String, String> form) {
    String jsonResult = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(form);
    return formRepository.save(new FormEntity(jsonResult));
  }

}
