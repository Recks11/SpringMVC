package com.egov.mvc.data.Models;

import com.egov.mvc.data.Models.userClasses.user;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Ijiekhuamen Rex
 * on 3/14/2017.
 */

@Entity
public class News{


    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "ownerName", nullable = false,
                foreignKey = @ForeignKey(name = "OWNERNAME_FK"))
    private user owner;

    @Temporal(TemporalType.TIMESTAMP)
    private Date date;

    private String headline;

    @Type( type = "text")
    private String article;

    public News() {
    }

    public News(user ownerId, Date date, String headline, String article) {
        this.owner = ownerId;
        this.date = date;
        this.headline = headline;
        this.article = article;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public user getOwner() {
        return owner;
    }

    public void setOwner(user owner) {
        this.owner = owner;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getHeadline() {
        return headline;
    }

    public void setHeadline(String headline) {
        this.headline = headline;
    }

    public String getArticle() {
        return article;
    }

    public void setArticle(String article) {
        this.article = article;
    }
}