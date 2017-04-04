package com.egov.mvc.data.dao.impl;

import com.egov.mvc.data.Models.News;
import com.egov.mvc.data.Models.userClasses.user;
import com.egov.mvc.data.dao.NewsDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/16/2017.
 */

@Repository
public class NewsDaoImpl implements NewsDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void newArticle(News news) {

        news.setDate(new Date());
        sessionFactory.getCurrentSession().save(news);
    }

    @Override
    public News getArticleById(long id) {
        return sessionFactory.getCurrentSession().get(News.class, id);
    }

    @Override
    public void updateArticle(News news) {
        sessionFactory.getCurrentSession().update(news);
    }

    @Override
    public void deleteArticle(int id) {
        sessionFactory.getCurrentSession().delete(getArticleById(id));
    }

    @Override
    public List getAllArticles() {
        return sessionFactory.getCurrentSession().createQuery("from News order by date desc").list();
    }

    private int getusersha(String name){
        int a = (int) sessionFactory.getCurrentSession().createQuery("select userID from user where username = ?").setParameter(0,name).uniqueResult();
        System.out.println(name);
        System.out.println(a);
        return a;
    }
    @Override
    public user findArticleUserByName(String name) {
        return sessionFactory.getCurrentSession().get(user.class, getusersha(name));
    }
}
