package com.egov.mvc.data.Models.security;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by Ijiekhuamen Rex
 * on 3/21/2017.
 */
@Entity
public class authorities {

    @Id
    @GeneratedValue
    private int authorityId;

    private String username;

    private String authority;

    public authorities(){}
    public authorities(String username, String authority) {
        this.username = username;
        this.authority = authority;
    }

    public int getAuthorityId() {
        return authorityId;
    }

    public void setAuthorityId(int authorityId) {
        this.authorityId = authorityId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    @Override
    public String toString() {
        return "authorities{" +
                "authorityId=" + authorityId +
                ", username='" + username + '\'' +
                ", authority='" + authority + '\'' +
                '}';
    }
}
