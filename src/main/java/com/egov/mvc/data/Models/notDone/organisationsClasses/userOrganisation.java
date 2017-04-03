package com.egov.mvc.data.Models.notDone.organisationsClasses;

import com.egov.mvc.data.Models.components.houseAddress;
import com.egov.mvc.data.Models.userClasses.user;

import javax.persistence.*;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
@Entity
public class userOrganisation {

    @Id
    @GeneratedValue
    private long id;

    private String organisationName;

    private String roleAvailable;//(VACANCY)

    @OneToOne
    @JoinColumn(name="organisationAddress", nullable = false,
                foreignKey = @ForeignKey(name="address_id"))
    private houseAddress address;

    private String contact;

    private String emailAddress;

    @ManyToOne
    @JoinColumn( name= "organisationOwner", nullable = false,
    foreignKey = @ForeignKey(name="ORGANISATION_OWNERID_FK"))
    private user usr;

    public userOrganisation() {}

    public userOrganisation(String organisationName, String roleAvailable, houseAddress address, String contact, String emailAddress, user usr) {
        this.organisationName = organisationName;
        this.roleAvailable = roleAvailable;
        this.address = address;
        this.contact = contact;
        this.emailAddress = emailAddress;
        this.usr = usr;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getOrganisationName() {
        return organisationName;
    }

    public void setOrganisationName(String organisationName) {
        this.organisationName = organisationName;
    }

    public String getRoleAvailable() {
        return roleAvailable;
    }

    public void setRoleAvailable(String roleAvailable) {
        this.roleAvailable = roleAvailable;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public houseAddress getAddress() {
        return address;
    }

    public void setAddress(houseAddress address) {
        this.address = address;
    }

    public user getUsr() {
        return usr;
    }

    public void setUsr(user usr) {
        this.usr = usr;
    }

    @Override
    public String toString() {
        return "userOrganisation{" +
                "id=" + id +
                ", organisationName='" + organisationName + '\'' +
                ", roleAvailable='" + roleAvailable + '\'' +
                ", address=" + address +
                ", contact='" + contact + '\'' +
                ", emailAddress='" + emailAddress + '\'' +
                ", usr=" + usr +
                '}';
    }
}
