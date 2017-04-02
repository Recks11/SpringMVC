package com.egov.mvc.data.Models.security;

import com.egov.mvc.data.Models.userClasses.user;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by Ijiekhuamen Rex
 * on 3/21/2017.
 */
@Entity
public class users {

    @Id
    @GeneratedValue
    private long userId;

    private String username;

    private String password;

    private boolean enabled;

    public users(){}

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }
}
