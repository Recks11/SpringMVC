package com.egov.mvc.data.dao.impl;

import com.egov.mvc.data.Models.Blog;
import com.egov.mvc.data.Models.userClasses.user;
import com.egov.mvc.data.dao.BlogDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Id;
import java.util.Date;
import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/19/2017.
 */
@Repository
public class BlogDaoImpl implements BlogDao {

    private final SessionFactory sessionFactory;

    @Autowired
    public BlogDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    @Override
    public void addBlog(Blog blog) {
        blog.setDate(new Date());
        sessionFactory.getCurrentSession().save(blog);
    }

    @Override
    public void editBlog(Blog blog) {
        sessionFactory.getCurrentSession().update(blog);
    }

    @Override
    public Blog getBlogById(long id) {
        return sessionFactory.getCurrentSession().get(Blog.class, id);
    }

    @Override
    public void deleteBlog(long id) {
        sessionFactory.getCurrentSession().delete(getBlogById(id));
    }

    @Override
    public List getAllBlogs() {
        return sessionFactory.getCurrentSession().createQuery("from Blog").list();
    }

    private int getusersha(String name){
        int a = (int) sessionFactory.getCurrentSession().createQuery("select userID from user where username = ?").setParameter(0,name).uniqueResult();
        System.out.println(name);
        System.out.println(a);
        return a;
    }

    @Override
    public user findBlogUserByName(String name) {
        return sessionFactory.getCurrentSession().get(user.class, getusersha(name));
    }
}
