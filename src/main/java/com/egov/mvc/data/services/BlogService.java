package com.egov.mvc.data.services;

import com.egov.mvc.data.Models.Blog;
import com.egov.mvc.data.Models.userClasses.user;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/19/2017.
 */
public interface BlogService {
    void addBlog(Blog blog);
    void editBlog(Blog blog);
    Blog getBlogById(int id);
    void deleteBlog(int id);
    List getAllBlogs();
    user findBlogUserByName(String name);
}
