package com.egov.mvc.data.dao;

import com.egov.mvc.data.Models.News;
import com.egov.mvc.data.Models.userClasses.user;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/16/2017.
 */
public interface NewsDao {

    void newArticle(News news);

    News getArticleById(int Id);

    void updateArticle(News news);

    void deleteArticle(int id);

    List getAllArticles();

    user findArticleUserByName(String name);
}
