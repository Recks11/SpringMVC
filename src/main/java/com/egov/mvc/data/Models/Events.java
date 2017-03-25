package com.egov.mvc.data.Models;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;

/**
 * Created by Ijiekhuamen Rex
 * on 3/14/2017.
 */
@Entity
public class Events {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column //@NotBlank (message = "When Fam?")
    private String date;
    @Column //@NotBlank (message = "Whats the Title?")
    private String title;
    @Column //@NotBlank(message = "Please Provide a description")
    private String description;
    @Column
    private String content;

    public Events(){}

    public Events(Long id,String date, String title, String description, String content) {
        this.id = id;
        this.date = date;
        this.title = title;
        this.description = description;
        this.content = content;

    }
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
