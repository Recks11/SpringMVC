package com.egov.mvc.data.Models.userClasses;

import javax.persistence.*;

/**
 * Created by Ijiekhuamen Rex
 * on 3/10/2017.
 */

@Entity
public class Administration {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int administratorId;

    @Column
    private String name;

    @Column
    private String designation;

    @Column
    private String phoneNumber;

    @Column
    private String email;

    public Administration(){}

    public Administration(int administratorId, String name, String designation, String phoneNumber, String email) {
        super();
        this.administratorId = administratorId;
        this.name = name;
        this.designation = designation;
        this.phoneNumber = phoneNumber;
        this.email = email;
    }

    public int getAdministratorId() {
        return administratorId;
    }

    public void setAdministratorId(int administratorId) {
        this.administratorId = administratorId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
