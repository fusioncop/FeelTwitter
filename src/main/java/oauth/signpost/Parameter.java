/* Copyright (c) 2008, 2009 Netflix, Matthias Kaeppler
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

import java.util.Map;

/** A name/value pair. */
public class Parameter implements Map.Entry<String, String> {

    public Parameter(String key, String value) {
        this.key = key;
        this.value = value;
    }

    private final String key;

    private String value;

    public String getKey() {
        return key;
    }

    public String getValue() {
        return value;
    }

    public String setValue(String value) {
        try {
            return this.value;
        } finally {
            this.value = value;
        }
    }

    @Override
    public String toString() {
        return getKey() + '=' + getValue();
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((key == null) ? 0 : key.hashCode());
        result = prime * result + ((value == null) ? 0 : value.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        final Parameter that = (Parameter) obj;
        if (key == null) {
            if (that.key != null)
                return false;
        } else if (!key.equals(that.key))
            return false;
        if (value == null) {
            if (that.value != null)
                return false;
        } else if (!value.equals(that.value))
            return false;
        return true;
    }
}
