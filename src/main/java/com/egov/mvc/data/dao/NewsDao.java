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

    News getArticleById(long Id);

    void updateArticle(News news);

    void deleteArticle(int id);

    void deleteArticlesForUser(int userID);

    List getAllArticles();

    List getArticlesForUserByUserID(int userId);

    Boolean articleExists(int userID);

    user findArticleUserByName(String name);
}
