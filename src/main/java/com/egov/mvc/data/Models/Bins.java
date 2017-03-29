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

    @NotBlank
    @ManyToOne
    @JoinColumn(name = "userID", nullable = false,
                foreignKey = @ForeignKey(name = "USERID_FK"))
    private user user;

    @NotBlank
    @Temporal(TemporalType.DATE)
    @Column(name="requestDate")
    private Date date;
// approved Date

    @NotBlank
    @Column(name = "request", nullable= false)
    private String requestType;

    public Bins(){}

    public Bins(com.egov.mvc.data.Models.userClasses.user user, Date date, String requestType) {
        this.user = user;
        this.date = date;
        this.requestType = requestType;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public com.egov.mvc.data.Models.userClasses.user getUser() {
        return user;
    }

    public void setUser(com.egov.mvc.data.Models.userClasses.user user) {
        this.user = user;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getRequestType() {
        return requestType;
    }

    public void setRequestType(String requestType) {
        this.requestType = requestType;
    }
}
