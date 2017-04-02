package com.egov.mvc.data.services.impl;

import com.egov.mvc.data.Models.News;
import com.egov.mvc.data.Models.userClasses.user;
import com.egov.mvc.data.dao.NewsDao;
import com.egov.mvc.data.services.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/16/2017.
 */
@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsDao newsDao;

    @Transactional
    public void newArticle(News news) {
        newsDao.newArticle(news);
    }

    @Transactional
    public News getArticleById(long Id) {
        return newsDao.getArticleById(Id);
    }

    @Transactional
    public void updateArticle(News news) {
            newsDao.updateArticle(news);
    }

    @Transactional
    public void deleteArticle(int id) {
        newsDao.deleteArticle(id);
    }

    @Transactional
    public List getAllArticles() {
        return newsDao.getAllArticles();
    }

    @Transactional
    public user findArticleUserByName(String name) {
        return newsDao.findArticleUserByName(name);
    }
}
