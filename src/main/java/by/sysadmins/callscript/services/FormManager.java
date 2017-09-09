package by.sysadmins.callscript.services;

import by.sysadmins.callscript.converters.FormConverter;
import by.sysadmins.callscript.dto.FormDTO;
import by.sysadmins.callscript.entities.FormEntity;
import by.sysadmins.callscript.repositories.FormRepository;
import by.sysadmins.callscript.services.google.GoogleSpreadsheetService;
import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class FormManager {

  private final FormRepository formRepository;
  private final FormConverter formConverter;
  private final GoogleSpreadsheetService googleService;

  @SneakyThrows
  public FormEntity saveForm(FormDTO form) {
    form.getForm().values().removeIf(StringUtils::isBlank);
    form.setUploaded(googleService.insert(form));
    return formRepository.save(formConverter.convertToEntity(form));
  }

  @SneakyThrows
  public List<FormDTO> getAllForms() {
    List<FormDTO> results = new ArrayList<>();
    Iterable<FormEntity> formEntities = formRepository.findAll();
    for (FormEntity formEntity : formEntities) {
      results.add(formConverter.convertToDTO(formEntity));
    }
    return results;
  }

  public void synchronizeForms() {
    List<FormEntity> notUploadedFormEntities = formRepository.findByUploaded(Boolean.FALSE);
    for (FormEntity formEntity : notUploadedFormEntities) {
      FormDTO formDTO = formConverter.convertToDTO(formEntity);
      boolean uploadResult = googleService.insert(formDTO);
      log.debug("Result of uploading form id={} is {}", formEntity.getId(), uploadResult);
      if (uploadResult) {
        formEntity.setUploaded(Boolean.TRUE);
        formRepository.save(formEntity);
      } else {
        break;
      }
    }
  }

  public boolean uploadFormToExternalSystem(String startDate, String endDate) {
    return false;
  }
}
