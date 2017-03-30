package com.egov.mvc.data.services;

import com.egov.mvc.data.Models.userClasses.user;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/24/2017.
 */
public interface userService {

    void addUser(user usr);

    user getUserById(int Id);

    user getUserByUsername(String username);

    List getAllUsers();

    void deleteUser(int Id);

    void setRole(String username, String role);

    int numberOfBloggers();

    int numberOfReporters();

}
