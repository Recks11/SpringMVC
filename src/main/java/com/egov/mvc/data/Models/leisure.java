package com.egov.mvc.data.Models;

import com.egov.mvc.data.Models.components.houseAddress;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */

@Entity
public class leisure {

    @Id
    @GeneratedValue
    private long id;

    private String name;

    private String type;

    @OneToOne
    @JoinColumn(name = "organisation_address", nullable = false,
            foreignKey = @ForeignKey(name = "ORGANISATION_ADDRESS_FK"))
    private houseAddress address;

    @Column(name = "phone_num")
    private String number;

    private String emailAddress;

    @Transient
    private MultipartFile image;

    public leisure(){}

    public leisure(String name, String type, houseAddress address, String number, String emailAddress, MultipartFile image) {
        this.name = name;
        this.type = type;
        this.address = address;
        this.number = number;
        this.emailAddress = emailAddress;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public MultipartFile getImage() {
        return image;
    }

    public void setImage(MultipartFile image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "leisure{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", address=" + address +
                ", number='" + number + '\'' +
                ", emailAddress='" + emailAddress + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
