package com.egov.mvc.data.dao;

import com.egov.mvc.data.Models.userClasses.user;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/10/2017.
 */


public interface userDao {

    void addUser(user usr);

    user getUserById(int Id);

    user getUserByUsername(String username);

    List getAllUsers();

    void deleteUser(int Id);

    void setRole(String username, String role);
}
