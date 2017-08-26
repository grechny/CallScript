package by.sysadmins.callscript.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "forms")
public class FormEntity {

  @Id
  @GeneratedValue
  private Long id;

  @Column(length = 65535, columnDefinition = "text")
  private String form;

  public FormEntity(String form) {
    this.form = form;
  }
}
