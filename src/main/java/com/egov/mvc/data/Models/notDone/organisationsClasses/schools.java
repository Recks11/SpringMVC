package com.egov.mvc.data.Models.notDone.organisationsClasses;

import com.egov.mvc.data.Models.components.houseAddress;

import javax.persistence.*;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
@Entity
public class schools {

    @Id
    @GeneratedValue
    private long id;

    private String name;

    @OneToOne
    @JoinColumn(name = "school_address", nullable = false,
            foreignKey = @ForeignKey(name = "ADDRESSID_FK"))
    private houseAddress address;

    @Column(name = "phone_num")
    private String number;

    private String emailAddress;

    private String website;


    private String image;

    public schools(){}

    public schools(String name, houseAddress address, String number, String emailAddress, String website, String image) {
        this.name = name;
        this.address = address;
        this.number = number;
        this.emailAddress = emailAddress;
        this.website = website;
        this.image = image;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public houseAddress getAddress() {
        return address;
    }

    public void setAddress(houseAddress address) {
        this.address = address;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "schools{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", address=" + address +
                ", number='" + number + '\'' +
                ", emailAddress='" + emailAddress + '\'' +
                ", website='" + website + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
