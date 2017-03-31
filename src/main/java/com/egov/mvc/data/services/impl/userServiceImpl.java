package com.egov.mvc.data.services.impl;

import com.egov.mvc.data.Models.userClasses.user;
import com.egov.mvc.data.dao.userDao;
import com.egov.mvc.data.services.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/24/2017.
 */
@Service
public class userServiceImpl implements userService {

   private final userDao userDao;

    @Autowired
    public userServiceImpl(userDao userDao) {
        this.userDao = userDao;
    }

    @Transactional
    public void addUser(user usr) {
        userDao.addUser(usr);
    }

    @Transactional
    public user getUserById(int Id) {
        return userDao.getUserById(Id);
    }

    @Transactional
    public user getUserByUsername(String username) {
        return userDao.getUserByUsername(username);
    }

    @Transactional
    public List getAllUsers() {
        return userDao.getAllUsers();
    }

    @Transactional
    public void deleteUser(int Id) {
        userDao.deleteUser(Id);
    }

    @Transactional
    public void setRole(String username, String role) {
        userDao.setRole(username, role);
    }

    @Transactional
    public int numberOfBloggers() {
        return userDao.numberOfBloggers();
    }

    @Transactional
    public int numberOfReporters() {
        return userDao.numberOfReporters();
    }
}
