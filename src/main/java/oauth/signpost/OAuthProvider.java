/* Copyright (c) 2009 Matthias Kaeppler
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package oauth.signpost;

import oauth.signpost.exception.OAuthCommunicationException;
import oauth.signpost.exception.OAuthExpectationFailedException;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.exception.OAuthNotAuthorizedException;


import org.apache.http.client.HttpClient;

public interface OAuthProvider {

    /**
     * Use this method to set a custom {@link HttpClient} to use when retrieving
     * tokens from an HTTP server.
     */
    public void setHttpClient(HttpClient httpClient);

    /**
     * Queries the service provider for a request token.
     * <p>
     * <b>Pre-conditions:</b> the {@link DefaultOAuthConsumer} connected to
     * this provider must have a valid consumer key and consumer secret already
     * set.
     * </p>
     * <p>
     * <b>Post-conditions:</b> the {@link DefaultOAuthConsumer} connected to
     * this provider will have an unauthorized request token and token secret
     * set.
     * </p>
     * @param consumer 
     * 
     * @param callbackUrl
     *            Used to construct the return value, see below
     * @return The URL to which the user must be sent in order to authorize the
     *         consumer. It include the unauthorized request token and the
     *         callback URL.
     * @throws OAuthMessageSignerException
     *             if signing the request failed
     * @throws OAuthNotAuthorizedException
     *             if the service provider rejected the consumer
     * @throws OAuthExpectationFailedException
     *             if required parameters were not correctly set by the consumer
     *             or service provider
     * @throws OAuthCommunicationException
     *             if server communication failed
     */
    public String retrieveRequestToken(OAuthConsumer consumer, String callbackUrl)
            throws OAuthMessageSignerException, OAuthNotAuthorizedException,
            OAuthExpectationFailedException, OAuthCommunicationException;

    /**
     * Queries the service provider for an access token.
     * <p>
     * <b>Pre-conditions:</b> the {@link DefaultOAuthConsumer} connected to
     * this provider must have a valid consumer key, consumer secret, authorized
     * request token and token secret already set.
     * </p>
     * <p>
     * <b>Post-conditions:</b> the {@link DefaultOAuthConsumer} connected to
     * this provider will have an access token and token secret set.
     * </p>
     * @param pin 
     * @param consumer 
     * 
     * @throws OAuthMessageSignerException
     *             if signing the request failed
     * @throws OAuthNotAuthorizedException
     *             if the service provider rejected the consumer
     * @throws OAuthExpectationFailedException
     *             if required parameters were not correctly set by the consumer
     *             or service provider
     * @throws OAuthCommunicationException
     *             if server communication failed
     */
    public void retrieveAccessToken(OAuthConsumer consumer, String pin) throws OAuthMessageSignerException,
            OAuthNotAuthorizedException, OAuthExpectationFailedException,
            OAuthCommunicationException;
}
