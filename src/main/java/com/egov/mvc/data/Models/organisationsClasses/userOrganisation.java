package com.egov.mvc.data.Models.organisationsClasses;

import com.egov.mvc.data.Models.components.houseAddress;
import com.egov.mvc.data.Models.userClasses.user;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
@Entity
public class userOrganisation {

    @Id
    @GeneratedValue
    private int id;

    private String organisationName;

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

    public userOrganisation(String organisationName, houseAddress address, String contact, String emailAddress, user usr) {
        this.organisationName = organisationName;
        this.address = address;
        this.contact = contact;
        this.emailAddress = emailAddress;
        this.usr = usr;
    }


    @Override
    public String toString() {
        return "userOrganisation{" +
                "id=" + id +
                ", organisationName='" + organisationName + '\'' +
                ", address=" + address +
                ", contact='" + contact + '\'' +
                ", emailAddress='" + emailAddress + '\'' +
                ", usr=" + usr +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOrganisationName() {
        return organisationName;
    }

    public void setOrganisationName(String organisationName) {
        this.organisationName = organisationName;
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

}
