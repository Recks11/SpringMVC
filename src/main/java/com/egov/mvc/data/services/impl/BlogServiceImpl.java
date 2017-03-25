package com.egov.mvc.data.services.impl;

import com.egov.mvc.data.Models.Blog;
import com.egov.mvc.data.Models.userClasses.user;
import com.egov.mvc.data.dao.BlogDao;
import com.egov.mvc.data.services.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/19/2017.
 */
@Service
public class BlogServiceImpl implements BlogService {


    @Autowired
    private BlogDao blogDao;

    @Transactional
    public void addBlog(Blog blog) {
        blogDao.addBlog(blog);
    }

    @Transactional
    public void editBlog(Blog blog) {
        blogDao.editBlog(blog);
    }

    @Transactional
    public Blog getBlogById(int id) {
        return blogDao.getBlogById(id);
    }

    @Transactional
    public void deleteBlog(int id) {
        blogDao.deleteBlog(id);
    }

    @Transactional
    public List getAllBlogs() {
        return blogDao.getAllBlogs();
    }

    @Transactional
    public user findBlogUserByName(String name) {
        return blogDao.findBlogUserByName(name);
    }
}
