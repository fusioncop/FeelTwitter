
package com.feel.FeelTwitter;

import static com.feel.util.Resource.close;

import java.awt.Desktop;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import java.util.prefs.BackingStoreException;
import java.util.prefs.Preferences;


import javax.swing.JOptionPane;

import oauth.signpost.OAuth;
import oauth.signpost.OAuthConsumer;
import oauth.signpost.http.HttpRequest; 
import oauth.signpost.OAuthProvider;
import oauth.signpost.basic.DefaultOAuthConsumer;
import oauth.signpost.basic.DefaultOAuthProvider;
import oauth.signpost.basic.HttpRequestAdapter;
import oauth.signpost.exception.OAuthCommunicationException;
import oauth.signpost.exception.OAuthException;
import oauth.signpost.exception.OAuthExpectationFailedException;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.exception.OAuthNotAuthorizedException;

import org.apache.commons.lang.StringUtils;

import org.apache.log4j.Logger;

import com.feel.util.TimeSpanUtil;
import com.thoughtworks.xstream.XStreamException;

                     


public class FeelTwitterController implements Runnable {

    private static final Logger LOG = Logger.getLogger(FeelTwitterController.class);//Create log file

    private FeelTwitter backup;

    private String UserID, token, tokenSecret, password, proxy, file;

    private char port;
    
    private transient HttpURLConnection connection;
    
    
    private Map<String, String> defaultHeaders;
    private long timeout = 20000;

    
    private final OAuthConsumer consumer = new DefaultOAuthConsumer("dD6n2GqcTrIdOfgYVIMnGQ",
      "7BqRzB1Qo3RcbekBIFu6If5jZeDyM7b9tKRRB67azc");//oauth.signpost, OAuth library that is implemented in Objective-C
    

    
    OAuthProvider provider = new DefaultOAuthProvider("https://twitter.com/oauth/request_token",
    	      "https://twitter.com/oauth/access_token", "https://twitter.com/oauth/authorize");

    /**
     * Constructor for FeelTwitterController.
     * 
     */
    public FeelTwitterController() {
        this(new FeelTwitter());
    }


    public FeelTwitterController(FeelTwitter backup) {
        super();
        this.backup = backup;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = StringUtils.trimToNull(UserID);
        this.token = this.tokenSecret = null;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = StringUtils.trimToNull(password);//to transform empty strings to null 
        this.token = this.tokenSecret = null;
    }

    @SuppressWarnings("unused")
	@Override
	public void run() {
           System.out.println("debug5");
        
        if (getToken() == null|| getTokenSecret() == null) {
        	
        	
        //	 String authURL = provider.retrieveRequestToken(consumer, OAuth.OUT_OF_BAND);
            try {
                String authURL = provider.retrieveRequestToken(consumer, OAuth.OUT_OF_BAND);
                try {
                    Desktop.getDesktop().browse(new URI(authURL));
                    LOG.info("opening\n" + authURL + "\n");
                }
                catch (IOException ex) {
                    LOG.info("please open\n" + authURL + "\browser");
                }
                catch (URISyntaxException ex) {
                    LOG.info("please open\n" + authURL + "\browser");
                }
                catch (UnsupportedOperationException ex) {
                    LOG.info("please open\n" + authURL + "\browser");
                }
                String pin = JOptionPane.showInputDialog("Insert PIN CODE ");
                provider.retrieveAccessToken(consumer, pin);
                
                token = consumer.getToken();
                tokenSecret = consumer.getTokenSecret();
            }
            catch (OAuthExpectationFailedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (OAuthMessageSignerException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (OAuthNotAuthorizedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (OAuthCommunicationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	
            System.out.println("Request token: " + consumer.getToken());
            System.out.println("Token secret: " + consumer.getTokenSecret());

      //      System.out.println("Now visit:\n" + authURL + "\n... and grant this app authorization");
            System.out.println("Enter the PIN code and hit ENTER when you're done:");

            

            System.out.println("Access token: " + consumer.getToken());
            System.out.println("Token secret: " + consumer.getTokenSecret());
        	
        }
        else {
            consumer.setTokenWithSecret(token, tokenSecret);// create a request that requires authentication 

        }

        long then = System.currentTimeMillis();

      //  readExistingBackup();

        boolean changed = false;
        int page = 1;
        int read = 0;
        BufferedWriter writer = null;
       URL u = null;
        //URL u =http://api.twitter.com/1/statuses/user_timeline/" + UserID + ".xml?page=" + page
        
       System.out.println("debug");
        do {
            try {
            	System.out.println("debug1");
           //  u = new URL("http://api.twitter.com/1/statuses/mentions" + UserID + ".xml?page=" + page);
            	u = new URL("http://api.twitter.com/1/statuses/user_timeline/" + UserID + ".xml?page=" + page);
          //   HttpURLConnection request = (HttpURLConnection) u.openConnection();
            	
            	if (LOG.isInfoEnabled()) {
                    LOG.info("loading " + u);
                    System.out.println("debug2");
                }
            	
//            	 if (LOG.isErrorEnabled()) {
//            		 LOG.error("ERROR TEST");
//            		
//            	    }

               read = -1;
            //	u = new URL("http://api.twitter.com/1/statuses/user_timeline/" + UserID + ".xml?page=" + page);
            	read = 0;
                read = backup.read(openURL(u));
               
                if (read > 0) {
                    if (LOG.isInfoEnabled()) {
                        LOG.info(read + " new tweets downloaded, " + backup.size() + " total");
                    }
                    changed = true;
                }
                else {
                    LOG.info("no new one");
                }
            }
            catch (IllegalStateException ex) {
                LOG.warn(ex.getLocalizedMessage() + ", again");
            }
            catch (MalformedURLException ex) {
                LOG.error(ex.getLocalizedMessage() + ", aborting");
                break;
            }
            catch (IOException ex) {
                LOG.warn(ex.getLocalizedMessage() + ",  again");
            }
            catch (OAuthException ex) {
                LOG.error(ex.getLocalizedMessage() + ", aborting");
                break;
            }
            catch (XStreamException ex) {
                LOG.error(ex.getLocalizedMessage() +"Sorry");
                break;
            } catch (OAuthMessageSignerException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (OAuthNotAuthorizedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            if (read == -1 || read > 0) {
                if (LOG.isInfoEnabled()) {
                  
                	LOG.info("waiting " + TimeSpanUtil.toTimeSpanString(getHttpProxyPort()));
                }
                try {
                    Thread.sleep(timeout);
                }
                catch (InterruptedException ex) {
                    break;
                }
            }
            if (read != 0) {
                ++page;
            }
        }
        while (read != 0);

        try {
            if (changed) {
                if (LOG.isInfoEnabled()) {
                    LOG.info("saving backup to " + getFile());
                }
                writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(getFile()), "UTF-8"));
             writer.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
             writer.write("<?xml-stylesheet type=\"text/xsl\" href=\"x.xsl\"?> \n");
                
             backup.write(writer);
               
            }
        }
        catch (IOException ex) {
            LOG.error("couldn't write to " + getFile() + ": " + ex.getLocalizedMessage());
        }
        finally {
            close(writer);
        }

        if (LOG.isInfoEnabled()) {
              	
        	LOG.info("XML File in ParkFeelTEXT Folder" +TimeSpanUtil.toTimeSpanString(getHttpProxyPort()));
        	 LOG.info(getFile());
         
        }


    	 ProcessBuilder pb = new ProcessBuilder("C:/Program Files/Internet Explorer/iexplore.exe","C:/Documents and Settings/ssl/デスクトップ/f/FeelTwitter/feel.html");
    	  try {
			Process process = pb.start();
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
    	  
    }

    public static void printByInputStream(InputStream is) {
        byte[] buf = new byte[1024];
        int len = -1;
       
        try {
            while((len = is.read(buf, 0, buf.length)) != -1) {
                System.out.write(buf, 0, len);
            }
        } catch(IOException e) {
            e.printStackTrace();
        }
    
    
        
    }
    public static void printByOutputStream(OutputStream os, String msg) {
        try {
            byte[] msgBuf = msg.getBytes("UTF-8");
            os.write(msgBuf, 0, msgBuf.length);
            os.flush();
        } catch(IOException e) {
            e.printStackTrace();
        }
    }

    private void readExistingfile() {
        if (getFile() != null) {
            File existing = new File(getFile());
            if (existing.isFile() && existing.canRead()) {
                Reader reader = null;
                try {
                    reader = new InputStreamReader(new FileInputStream(existing), "UTF-8");
                    backup.clear();
                    int read = backup.read(reader);
                    LOG.info("read " + read + " tweets " + getFile());
                    LOG.info(getFile());
                    
           //         final Object[] show = backup.toArray();
                }
                catch (IOException ex) {
                    LOG.warn("could not read " + getFile() + ": " + ex.getLocalizedMessage());
                    
                }
                finally {
                    close(reader);
                }
            }
        }
    }

    public void save() throws BackingStoreException {
        Preferences prefs = Preferences.userNodeForPackage(getClass());
        prefs.put("UserID", StringUtils.defaultString(UserID));
        prefs.put("password", StringUtils.defaultString(password));
        prefs.put("proxy", StringUtils.defaultString(proxy));
       //prefs.put("port", CharUtils.toString(port));
        prefs.putInt("port", port);
        prefs.put("file", StringUtils.defaultString(file));
       
        prefs.remove("timeout");
        if (token == null) {
            prefs.remove("token");
        }
        else {
            prefs.put("token", token);
        }
        if (tokenSecret == null) {
            prefs.remove("tokenSecret");
        }
        else {
            prefs.put("tokenSecret", tokenSecret);
        }
        prefs.flush();
    }

    public void restore() {
        Preferences prefs = Preferences.userNodeForPackage(getClass());
        UserID = prefs.get("UserID", null);
        password = prefs.get("password", null);
        proxy = StringUtils.trimToNull(prefs.get("proxy", null));
        port = (char) prefs.getInt("port",0);
        file = prefs.get("file", null);
        token = prefs.get("token", null);
        tokenSecret = prefs.get("tokenSecret", null);
    }


    public String getFile() {
        return "feel.xml";
    }

    public void setFile(String file) {
        this.file = StringUtils.trimToNull(file);
    }

    public char getPort() {
        return port;
    }
    public int getHttpProxyPort() {
        return port;
    }

    public void setPort(char port) {
        this.port = port;
    }

    public String getProxy() {
        return proxy;
    }

    public void setProxy(String proxy) {
        this.proxy = StringUtils.trimToNull(proxy);
    }

    public long getTimeout() {
        return timeout;
    }

    public void setTimeout(long timeout) {
        this.timeout = timeout;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String accessToken) {
        this.token = accessToken;
    }

    public String getTokenSecret() {
        return tokenSecret;
    }

    public void setTokenSecret(String tokenSecret) {
        this.tokenSecret = tokenSecret;
    }

    private Reader openURL(URL u) throws IOException, IllegalStateException, OAuthException, OAuthMessageSignerException, OAuthNotAuthorizedException {
        if (proxy != null) {
            System.setProperty("https.proxySet", Boolean.TRUE.toString());//Sets the system property indicated by the specified key. 
            System.setProperty("https.proxyHost", "proxy.kawasaki.flab.fujitsu.co.jp");
            System.setProperty("https.proxyPort", "8080");
          
        }
        HttpURLConnection conn = (HttpURLConnection) u.openConnection();//log in process
        conn.setRequestProperty("User-Agent", FeelTwitter.VERSION + " http://someday-feel.blogspot.com/");
   
    	HttpRequest request = new HttpRequestAdapter(connection);
		for (String header : defaultHeaders.keySet()) {
			request.setHeader(header, defaultHeaders.get(header));
		}

		consumer.sign(request);

		connection.connect();

		int statusCode = connection.getResponseCode();

		if (statusCode == 401) {
			throw new OAuthNotAuthorizedException();
		}
		
			
	
        int response = conn.getResponseCode();
        LOG.debug(Integer.toString(conn.getResponseCode())); 
        if (response != 200) {//response time
            throw new IllegalStateException(conn.getResponseCode() + ": " + conn.getResponseMessage());// if already connected 
        }
        return new InputStreamReader(conn.getInputStream(), "UTF-8");
    }
    
   class TestURLConnection {
        public void main(String[] args) {
            URL url = null;
            URLConnection urlConnection = null;
           
            // URL 주소
            String sUrl = "http://localhost/";

   
     

            try {
                // Get
                url = new URL(sUrl + getFile());
                urlConnection = url.openConnection();
                printByInputStream(urlConnection.getInputStream());
               
                // Post
                url = new URL(sUrl);
                urlConnection = url.openConnection();
                urlConnection.setDoOutput(true);
                printByOutputStream(urlConnection.getOutputStream(), getFile());
                printByInputStream(urlConnection.getInputStream());
            } catch(Exception e) {
                e.printStackTrace();
            }
        }

   }
}
