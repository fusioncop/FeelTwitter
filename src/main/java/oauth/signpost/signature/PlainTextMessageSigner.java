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
package oauth.signpost.signature;

import java.util.Map;

import oauth.signpost.OAuth;
import oauth.signpost.exception.OAuthMessageSignerException;

import org.apache.http.HttpRequest;

public class PlainTextMessageSigner extends OAuthMessageSigner {

    @Override
    public String sign(HttpRequest request, Map<String, String> oauthParameters)
            throws OAuthMessageSignerException {
        return OAuth.percentEncode(getConsumerSecret()) + '&'
                + OAuth.percentEncode(getTokenSecret());
    }
}
