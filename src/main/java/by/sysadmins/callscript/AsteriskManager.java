package by.sysadmins.callscript;

import org.asteriskjava.manager.DefaultManagerConnection;
import org.asteriskjava.manager.action.CommandAction;
import org.asteriskjava.manager.action.ManagerAction;
import org.asteriskjava.manager.response.CommandResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

class AsteriskManager {
    private static final Logger LOG = LoggerFactory.getLogger(AsteriskManager.class);

    static String getActiveCall(String ipAddress) {
        DefaultManagerConnection asteriskConnection = new DefaultManagerConnection("localhost", "admin", "fghj789");
        String number = null;

        try {
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
            LOG.error(e.getMessage(), e);
        } finally {
            asteriskConnection.logoff();
        }

        return number;
    }
}
