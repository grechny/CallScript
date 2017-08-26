package by.sysadmins.callscript.repositories;

import by.sysadmins.callscript.entities.FormEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FormRepository extends CrudRepository<FormEntity, Long> {

}
