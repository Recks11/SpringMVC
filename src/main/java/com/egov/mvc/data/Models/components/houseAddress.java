package com.egov.mvc.data.Models.components;

import com.egov.mvc.data.Models.userClasses.user;

import javax.persistence.*;

/**
 * Created by Ijiekhuamen Rex
 * on 3/21/2017.
 */
@Entity
public class houseAddress {

    @Id
    @GeneratedValue
    private int addressId;
    private String housenumber;
    private String streetName;
    private String city;


    public houseAddress(){}

    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }

//    public user getUsr() {
//        return usr;
//    }
//
//    public void setUsr(user usr) {
//        this.usr = usr;
//    }

    public String getHousenumber() {
        return housenumber;
    }

    public void setHousenumber(String housenumber) {
        this.housenumber = housenumber;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Override
    public String toString() {
        return "houseAddress{" +
                "addressId=" + addressId +
                ", housenumber='" + housenumber + '\'' +
                ", streetName='" + streetName + '\'' +
                ", city='" + city + '\'' +
                '}';
    }
}
