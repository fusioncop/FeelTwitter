package oauth.signpost; 
import java.util.HashMap; 
import java.util.Map; 
import oauth.signpost.exception.OAuthExpectationFailedException; 
import oauth.signpost.exception.OAuthMessageSignerException;  
import oauth.signpost.http.HttpRequest; 
import oauth.signpost.signature.OAuthMessageSigner; 
import oauth.signpost.signature.SignatureMethod; 
@SuppressWarnings("serial") 
public abstract class AbstractOAuthConsumer implements OAuthConsumer { 
	private String consumerKey, consumerSecret;
	private String token;
	private SignatureMethod signatureMethod;  
	private OAuthMessageSigner messageSigner;   
	public AbstractOAuthConsumer(String consumerKey, String consumerSecret) {   
		this.consumerKey = consumerKey; 
		this.consumerSecret = consumerSecret;  
	
		
		//messageSigner.setConsumerSecret(consumerSecret);
		} 
	@Override
	public HttpRequest sign(HttpRequest request)throws OAuthMessageSignerException, OAuthExpectationFailedException 
	{  if (consumerKey == null) 
	{
		throw new OAuthExpectationFailedException("consumer key not set"); 
		}
	if (consumerSecret == null)
	{ 
		throw new OAuthExpectationFailedException("consumer secret not set");  
		} 
	


Map<String, String> oauthParams = buildOAuthParameterMap();  
String signature = messageSigner.sign((org.apache.http.HttpRequest) request, oauthParams);  
request.setHeader(OAuth.HTTP_AUTHORIZATION_HEADER, buildOAuthHeader( 
		oauthParams, signature)); 
return request; 
}    
	public HttpRequest sign(Object request)
	throws OAuthMessageSignerException,  OAuthExpectationFailedException
	{ 
		return sign(wrap(request)); 
		} 
	protected abstract HttpRequest wrap(Object request); 
	public void setTokenWithSecret(String token, String tokenSecret) 
	{  this.token = token;  messageSigner.setTokenSecret(tokenSecret);  
	}   
	public String getToken()
	{  
		return token; 
		}  
	public String getTokenSecret()
	{ 
		return messageSigner.getTokenSecret(); 
		}  
	public String getConsumerKey() 
	{ 
		return this.consumerKey;  
		}  
	public String getConsumerSecret() { 
		return this.consumerSecret;  
		}
	private Map<String, String> buildOAuthParameterMap() 
	{ 
		HashMap<String, String> map = new HashMap<String, String>(); 
		map.put(OAuth.OAUTH_CONSUMER_KEY, consumerKey);
	
		map.put(OAuth.OAUTH_TIMESTAMP, Long  .toString(System.currentTimeMillis() / 1000L));
		map.put(OAuth.OAUTH_NONCE, Long.toString(System.nanoTime())); 
		map.put(OAuth.OAUTH_VERSION, OAuth.VERSION_1_0);
		map.put(OAuth.OAUTH_TOKEN, token);  return map; 
		} 
	private String buildOAuthHeader(Map<String, String> oauthParams, 
			String signature) 
	{  
		StringBuilder sb = new StringBuilder();
		sb.append("OAuth ");    
		for (String key : oauthParams.keySet()) {  String value = oauthParams.get(key);  
		sb.append(oauthHeaderElement(key, value)); 
		sb.append(",");  }  
		sb.append(oauthHeaderElement(OAuth.OAUTH_SIGNATURE, signature));    
		return sb.toString();  }  
	private String oauthHeaderElement(String name, String value) 
	{  return OAuth.percentEncode(name) + "=\"" + OAuth.percentEncode(value)  + "\"";  
	} 
	}  