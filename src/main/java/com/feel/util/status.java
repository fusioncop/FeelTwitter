/*
 * Created on 23.09.2008
 *
 */
package com.feel.util;



public class status implements Comparable<status> {// 메소드는 먼저 Twitter 오브젝트를 생성한 다음 소비자 키 및 시크리트를 설정한다

    String created_at;

    long id;

    String text;

    String source;

    boolean truncated;

    String in_reply_to_status_id;

    String in_reply_to_user_id;

    boolean favorited;
    
    String in_reply_to_screen_name;
    
    String retweet_count;

    boolean retweeted;

    String user;
  
    String geo;
    
    String coordinates;
    
    String place;
    
    String contributors;

    /**
     * @see java.lang.Object#equals(java.lang.Object)
     */
    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof status)) {
            return false;
        }
        return id == ((status) obj).id;
    }

    /**
     * @see java.lang.Object#hashCode()
     */
    @Override
    public int hashCode() {//id를 숫자로 파악해서 구별
        return (int) (id ^ (id >> 32));
    }

    /**
     * @see java.lang.Comparable#compareTo(java.lang.Object)
     */
    @Override
	public int compareTo(status o) {
        return id > o.id ? -1 : (id == o.id ? 0 : 1);
    }

}
