package by.sysadmins.callscript.entities;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name = "forms")
@Data
@NoArgsConstructor
public class FormEntity {

  @Id
  @GeneratedValue
  private Long id;

  @CreationTimestamp
  private Date date;

  @Column(length = 65535, columnDefinition = "text")
  private String form;

  @Column(columnDefinition = "tinyint(1) default '0'")
  private boolean uploaded;

  public FormEntity(String form) {
    this.form = form;
  }
}
