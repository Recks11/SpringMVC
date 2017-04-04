package com.egov.mvc.data.Models.organisationsClasses;

import javax.persistence.*;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
@Entity
public class jobs {

    @Id
    @GeneratedValue
    private long id;

    @ManyToOne
    @JoinColumn(name="organisationId", nullable = false,
                foreignKey = @ForeignKey(name="ORGID_FK"))
    private userOrganisation organisation;

    private String role;

    private int startingSalary;

    public jobs(){}

    public jobs(userOrganisation organisation, String role, int startingSalary) {
        this.organisation = organisation;
        this.role = role;
        this.startingSalary = startingSalary;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public userOrganisation getOrganisation() {
        return organisation;
    }

    public void setOrganisation(userOrganisation organisation) {
        this.organisation = organisation;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public int getStartingSalary() {
        return startingSalary;
    }

    public void setStartingSalary(int startingSalary) {
        this.startingSalary = startingSalary;
    }

    @Override
    public String toString() {
        return "jobs{" +
                "id=" + id +
                ", organisation=" + organisation +
                ", role='" + role + '\'' +
                ", startingSalary=" + startingSalary +
                '}';
    }
}
