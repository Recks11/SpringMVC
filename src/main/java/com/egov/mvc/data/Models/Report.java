package com.egov.mvc.data.Models;

import javax.persistence.*;

/**
 * Created by Ijiekhuamen Rex
 * on 3/15/2017.
 */
@Entity
public class Report {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column
    private String name;

    @Column
    private String description;

    @Column
    private String emailAddress;

    public Report() {}

    public Report(int id, String name, String description, String emailAddress) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.emailAddress = emailAddress;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }
}
