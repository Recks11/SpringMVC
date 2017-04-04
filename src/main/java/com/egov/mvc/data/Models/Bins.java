package com.egov.mvc.data.Models;

import com.egov.mvc.data.Models.userClasses.user;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Ijiekhuamen Rex
 * on 3/29/2017.
 */
@Entity
public class Bins {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @ManyToOne
    @JoinColumn(name = "userID", nullable = false,
                foreignKey = @ForeignKey(name = "USERID_FK"))
    private user usr;

    @Temporal(TemporalType.DATE)
    @Column(name="requestDate")
    private Date date;

// approved Date?

    @NotBlank
    @Column(name = "request", nullable= false)
    private String requestType;

    private String status;
    public Bins(){}

    public Bins(user usr, Date date, String requestType, String stauis) {
        this.usr = usr;
        this.date = date;
        this.status = status;
        this.requestType = requestType;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public user getUser() {
        return usr;
    }

    public void setUser(user user) {
        this.usr = user;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public user getUsr() {
        return usr;
    }

    public void setUsr(user usr) {
        this.usr = usr;
    }

    @Override
    public String toString() {
        return "Bins{" +
                "id=" + id +
                ", usr=" + usr +
                ", date=" + date +
                ", requestType='" + requestType + '\'' +
                ", status='" + status + '\'' +
                '}';
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRequestType() {
        return requestType;
    }

    public void setRequestType(String requestType) {
        this.requestType = requestType;
    }
}
