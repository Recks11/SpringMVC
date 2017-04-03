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

    private String type;

    public Report(String name, String description, String emailAddress, String type) {
        this.name = name;
        this.description = description;
        this.emailAddress = emailAddress;
        this.type = type;
    }

    public Report() {}

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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Report{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", emailAddress='" + emailAddress + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
