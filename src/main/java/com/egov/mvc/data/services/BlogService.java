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
    Blog getBlogById(long id);
    void deleteBlog(long id);
    void deleteUserBlogs(int userId);
    List getAllBlogs();
    user findBlogUserByName(String name);
    List getBlogsForUserByUserID(int userId);
    Boolean BlogExists(int userID);
}
