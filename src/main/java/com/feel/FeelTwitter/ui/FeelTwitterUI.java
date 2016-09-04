
package com.feel.FeelTwitter.ui;
import com.feel.FeelTwitter.FeelTwitter;
import com.feel.FeelTwitter.FeelTwitterController;

import java.lang.String;
import java.lang.ClassLoader.*;
import java.awt.Toolkit;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.prefs.BackingStoreException;
import oauth.signpost.AbstractOAuthConsumer;
import oauth.signpost.exception.OAuthException;
import oauth.signpost.http.HttpRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.text.StrBuilder;
import org.apache.log4j.Appender;
import org.apache.log4j.AppenderSkeleton;
import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggingEvent;

import com.feel.FeelTwitter.ui.FrameLauncher;
import com.feel.FeelTwitter.ui.Thinlet;




public class FeelTwitterUI extends Thinlet  {

    private static final long serialVersionUID = -8310719070327363473L;

    private static final Logger LOG = Logger.getLogger(FeelTwitterUI.class);

    private static final String ENABLED = "enabled";

    private static final String TEXT = "text";
    

    
    private FeelTwitterController controller;

    private Thread controllerThread;

    private StrBuilder logBuilder = new StrBuilder();

 
    @SuppressWarnings("unchecked")
    public FeelTwitterUI() throws IOException {
        super();
        add(parse("/com/feel/FeelTwitter/ui/ui.xml"));

        

        Appender a = new LogPanelAppender();
        
     
        Appender app = null;
        for (Enumeration<Appender> e = Logger.getRootLogger().getAllAppenders(); e.hasMoreElements();) {
            if ((app = e.nextElement()).getLayout() != null) {
                a.setLayout(app.getLayout());
            }
        }
        Logger.getRootLogger().removeAllAppenders();
        Logger.getRootLogger().addAppender(a);

   

        controller = new FeelTwitterController();
       // controller.restore();
        
        setString(find("UserID"), TEXT, controller.getUserID());
        setString(find("password"), TEXT, controller.getPassword());
        setString(find("file"), TEXT, controller.getFile());
        if (controller.getProxy() != null) {
            int httpProxyPort = controller.getHttpProxyPort();
			setString(find("proxy"), TEXT, controller.getProxy()
                    + (controller.getHttpProxyPort() != 80 ? ":" + httpProxyPort : ""));
        }
        setBoolean(find("start"), ENABLED, controller.getUserID() != null && controller.getPassword() != null
                && controller.getFile() != null);
    }

    private void setContentType(String string) {
		// TODO Auto-generated method stub
		
	}

	public void setUserID(String UserID) {
        controller.setUserID(UserID);
        setBoolean(find("start"), ENABLED, controller.getUserID() != null && controller.getPassword() != null
                && controller.getFile() != null);
    }

    public void setPassword(String password) {
        controller.setPassword(password);
        setBoolean(find("start"), ENABLED, controller.getUserID() != null && controller.getPassword() != null
                && controller.getFile() != null);
    }

    public void setFile(String file) {
        controller.setFile(file);
        setBoolean(find("start"), ENABLED, controller.getUserID() != null && controller.getPassword() != null
                && controller.getFile() != null);
    }

    public void setProxy(String proxy) {
        String p = StringUtils.trimToNull(proxy);
        int cIdx = proxy.indexOf(':');
        if (p == null) {
            controller.setProxy(null);
            controller.setPort((char) 0);
        }
        else if (cIdx != -1 && cIdx != p.length() - 1) {
            String host = proxy.substring(0, proxy.indexOf(':'));
            char port = (char) Integer.parseInt(proxy.substring(proxy.indexOf(':') + 1));
            controller.setProxy(host);
            controller.setPort(port);
        }
        else {
            controller.setProxy(p);
            controller.setPort((char) 80);
        }
    }

    public void action() {
        if (controllerThread == null) {

            setBoolean(find("UserID"), ENABLED, false);
            setBoolean(find("password"), ENABLED, false);
            setBoolean(find("file"), ENABLED, false);
            setBoolean(find("proxy"), ENABLED, false);
            setString(find("start"), TEXT, "loading");
      

            controllerThread = new Thread(controller);
            controllerThread.setDaemon(true);
            controllerThread.start();
            
 
            

            Thread t = new Thread(new Runnable() {

                private File file;

				/**
                 * @see java.lang.Runnable#run()
                 */
                @Override
				public void run() {
                    try {
                        controllerThread.join();
                    }
                    catch (InterruptedException ex) {
                        // Ignored.
                    }
                    controllerThread = null;
                    setBoolean(find("UserID"), ENABLED, true);
                    setBoolean(find("password"), ENABLED, true);
                    setBoolean(find("file"), ENABLED, true);
                    setBoolean(find("proxy"), ENABLED, true);
                    setString(find("start"), TEXT, "GO");
                    setBoolean(find("start"), ENABLED, true);
          
           
                }

            });
            t.setDaemon(true);
            t.start();
        }
        else {
            setBoolean(find("start"), ENABLED, false);
            controllerThread.interrupt();
        }
    }

    private synchronized void appendToLog(String s) {//append ->log destination
        Object log = find("log");
        logBuilder.append(s);
        setString(log, TEXT, logBuilder.toString());
    }

    public static void main(String[] args) throws IOException {
        final FeelTwitterUI ui = new FeelTwitterUI();
        FrameLauncher launcher = new FrameLauncher(FeelTwitter.VERSION, ui, 590, 255);
        launcher.setIconImage(Toolkit.getDefaultToolkit().createImage(FeelTwitterUI.class.getResource("a.png")));
        Runtime.getRuntime().addShutdownHook(new Thread() {

            @Override
            public void run() {
                try {
                    ui.controller.save();
                }
                catch (BackingStoreException ex) {
                    // Ignored
                }
            }

        });
    }
 
    
   


    class LogPanelAppender extends AppenderSkeleton {

        /**
         * Constructor for LogPanelAppender.
         */
        public LogPanelAppender() {
            super();
        }

        @Override
        protected void append(LoggingEvent event) {//org.apache.log4j.AppenderSkeleton#append(org.apache.log4j.spi.LoggingEvent)
            appendToLog(layout.format(event));
        }

   
        @Override
		public void close() {//org.apache.log4j.Appender#close()
        // Blank
        }

     
        @Override
		public boolean requiresLayout() {// org.apache.log4j.Appender#requiresLayout()
            return true;
        }

    }


}
