package com.egov.mvc.data.Models.security;



import javax.persistence.*;
import java.util.Date;

/**
 * Created by Ijiekhuamen Rex
 * on 3/21/2017.
 */
@Entity
@Table(name = "loggedin")
public class logintimestamp {

    @Id
    @GeneratedValue
    private long id;

    private String username;

    @Temporal(TemporalType.TIMESTAMP)
    private Date date;

    public logintimestamp(){}

    public logintimestamp(String username, Date date) {
        this.username = username;
        this.date = date;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
