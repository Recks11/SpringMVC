package com.egov.mvc.data.Models.components;



/**
 * Created by Ijiekhuamen Rex
 * on 3/14/2017.
 */

public class Article {

    private String Author;
    private String headline;
    private String body;

    public Article(String author, String headline, String body){
        this.Author = author;
        this.headline = headline;
        this.body = body;
    }

    public String getAuthor() {
        return Author;
    }

    public void setAuthor(String author) {
        Author = author;
    }

    public String getHeadline() {
        return headline;
    }

    public void setHeadline(String headline) {
        this.headline = headline;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    @Override
    public String toString() {
        return "Article{" +
                "Author='" + Author + '\'' +
                ", headline='" + headline + '\'' +
                ", body='" + body + '\'' +
                '}';
    }
}
