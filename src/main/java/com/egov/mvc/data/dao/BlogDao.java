package com.egov.mvc.data.dao;

import com.egov.mvc.data.Models.Blog;
import com.egov.mvc.data.Models.userClasses.user;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/19/2017.
 */
public interface BlogDao {

    void addBlog(Blog blog);
    void editBlog(Blog blog);
    Blog getBlogById(long id);
    void deleteBlog(long id);
    List getAllBlogs();
    user findBlogUserByName(String name);
}
