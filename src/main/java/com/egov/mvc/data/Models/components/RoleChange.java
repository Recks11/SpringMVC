package com.egov.mvc.data.Models.components;

import com.egov.mvc.data.Models.userClasses.user;

import javax.persistence.*;

/**
 * Created by Ijiekhuamen Rex
 * on 3/30/2017.
 */

@Entity
public class RoleChange {

    @Id
    @GeneratedValue
    private long id;

    @ManyToOne
    @JoinColumn(name="userID", nullable = false,
                foreignKey = @ForeignKey(name = "USER_ROLE_FK"))
    private user usr;

    private String role;

    public RoleChange(){}

    public RoleChange(user usr, String role) {
        this.usr = usr;
        this.role = role;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public user getUsr() {
        return usr;
    }

    public void setUsr(user usr) {
        this.usr = usr;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "RoleChange{" +
                "id=" + id +
                ", usr=" + usr +
                ", role='" + role + '\'' +
                '}';
    }
}
