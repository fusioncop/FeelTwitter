
package com.feel.FeelTwitter;

import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.TreeSet;

import com.feel.util.status;
import com.feel.util.statuses;
import com.feel.util.User;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.XmlFriendlyReplacer;
import com.thoughtworks.xstream.io.xml.XppDriver;

//xstream-distribution-1.3.1-src

public class FeelTwitter extends TreeSet<status> {

    public static final String VERSION = "FeelTwitter";
    private static final long serialVersionUID = 8561364223228785513L;


    public FeelTwitter() {
        super();
    }


    public int read(Reader r) {//Reads tweets from a reader in XML format.
        int read = 0;
        statuses s = (statuses) createXStream().fromXML(r);
        if (s != null && s.statuses != null) {
            for (status status : s.statuses) {
                if (!contains(status)) {
                    add(status);
                    ++read;
                }
            }
        }
        return read;
    }

     public void write(Writer w) {//Writes the tweets to a Writer.
        statuses out = new statuses();
        out.statuses = new ArrayList<status>();
        for (status s : this) {
            out.statuses.add(s);
        }
        createXStream().toXML(out, w);
    }

    private XStream createXStream() {// using xstream to serialize xml  
        XStream x = new XStream(new XppDriver(new XmlFriendlyReplacer() {

            @Override
            public String escapeName(String name) {
                return name;
            }

            @Override
            public String unescapeName(String name) {
                return name;
            }
        }));
        x.alias("statuses", statuses.class);
        x.alias("status", status.class);
        x.addImplicitCollection(statuses.class, "statuses");
        x.alias("user", User.class);
        x.aliasField("protected", User.class, "_protected");
        return x;
    }

}
