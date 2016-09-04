package oauth.signpost.basic;

import java.net.HttpURLConnection;

import oauth.signpost.AbstractOAuthConsumer;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.http.HttpRequest;
import oauth.signpost.signature.SignatureMethod;

@SuppressWarnings("serial")
public class DefaultOAuthConsumer extends AbstractOAuthConsumer {

    public DefaultOAuthConsumer(String consumerKey, String consumerSecret) {
        super(consumerKey, consumerSecret);
    }

    @Override
    protected HttpRequest wrap(Object request) {
        if (!(request instanceof HttpURLConnection)) {
            throw new IllegalArgumentException(
                    "The default consumer expects requests of type java.net.HttpURLConnection");
        }
        return new HttpRequestAdapter((HttpURLConnection) request);
    }

	public org.apache.http.HttpRequest sign(org.apache.http.HttpRequest request)
			throws OAuthMessageSignerException {
		// TODO Auto-generated method stub
		return null;
	}

}
