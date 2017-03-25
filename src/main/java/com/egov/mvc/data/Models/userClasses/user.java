package com.egov.mvc.data.Models.userClasses;


import com.egov.mvc.data.Models.components.houseAddress;
import com.egov.mvc.data.Models.security.authorities;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 * Created by Ijiekhuamen Rex
 * on 3/10/2017.
 */
@Entity
@Table(name = "user")
public class user {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int userID;

    @NotBlank
    private String firstName;

    @NotBlank
    private String lastName;

    @NotBlank
    private String email;

    @NotBlank
    private String contact;

    @NotBlank
    private String username;

    @NotBlank
    private String password;

    @NotNull
    private Boolean enabled;

    @OneToOne
    @JoinColumn(name = "addressId")
    private houseAddress houseaddress;

    @OneToOne
    @JoinColumn(name = "authorityId")
    private authorities authorities;



    public user() {
    }

    public user(String firstName, String lastName, String email, String contact,
                String username, String password, Boolean enabled,
                houseAddress houseaddress) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.contact = contact;
        this.username = username;
        this.password = password;
        this.enabled = enabled;
        this.houseaddress = houseaddress;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    public houseAddress getHouseaddress() {
        return houseaddress;
    }

    public void setHouseaddress(houseAddress houseaddress) {
        this.houseaddress = houseaddress;
    }

    public authorities getAuthorities() {
        return authorities;
    }

    public void setAuthorities(authorities authorities) {
        this.authorities = authorities;
    }

//    public List<Blog> getBlogs() {
//        return blogs;
//    }
//
//    public void setBlogs(List<Blog> blogs) {
//        this.blogs = blogs;
//    }
//
//    public List<News> getArticles() {
//        return articles;
//    }
//
//    public void setArticles(List<News> articles) {
//        this.articles = articles;
//    }
}