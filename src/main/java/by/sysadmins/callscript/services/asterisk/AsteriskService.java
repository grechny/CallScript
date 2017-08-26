package by.sysadmins.callscript.services.asterisk;

import lombok.extern.slf4j.Slf4j;
import org.asteriskjava.manager.DefaultManagerConnection;
import org.asteriskjava.manager.action.CommandAction;
import org.asteriskjava.manager.action.ManagerAction;
import org.asteriskjava.manager.response.CommandResponse;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class AsteriskService {

  private static String HOSTNAME_PROPERTY;
  private static String USERNAME_PROPERTY;
  private static String PASSWORD_PROPERTY;

  @Value("${asterisk.hostname}")
  public void setHostnameProperty (String hostnameProperty) {
    HOSTNAME_PROPERTY = hostnameProperty;
  }

  @Value("${asterisk.username}")
  public void setUsernameProperty (String usernameProperty) {
    USERNAME_PROPERTY = usernameProperty;
  }

  @Value("${asterisk.password}")
  public void setPasswordProperty(String passwordProperty) {
    PASSWORD_PROPERTY = passwordProperty;
  }

  public static String getActiveCall(String ipAddress) {
    String number = null;
    DefaultManagerConnection asteriskConnection = null;

    try {
      asteriskConnection = new DefaultManagerConnection(HOSTNAME_PROPERTY, USERNAME_PROPERTY, PASSWORD_PROPERTY);
      asteriskConnection.login();

      ManagerAction sipPeersAction = new CommandAction("sip show peers");
      CommandResponse sipPeersResponse = (CommandResponse) asteriskConnection.sendAction(sipPeersAction);
      String peer = " SIP/";
      for (String result : sipPeersResponse.getResult()) {
        if (result.contains(ipAddress)) {
          peer += result.split("[/\\s]+")[0];
          break;
        }
      }

      ManagerAction activeChannelsAction = new CommandAction("core show channels verbose");
      CommandResponse activeChannelResponse = (CommandResponse) asteriskConnection.sendAction(activeChannelsAction);
      for (String result : activeChannelResponse.getResult()) {
        if (result.contains(peer)) {
          number = result.split("[\\s]+")[7];
          break;
        }
      }
    } catch (Exception e) {
      log.error(e.getMessage(), e);
    } finally {
      asteriskConnection.logoff();
    }

    return number;
  }
}
