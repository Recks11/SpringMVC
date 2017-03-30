package com.egov.mvc.data.dao.impl;

import com.egov.mvc.data.Models.components.houseAddress;
import com.egov.mvc.data.Models.security.authorities;
import com.egov.mvc.data.Models.security.users;
import com.egov.mvc.data.Models.userClasses.user;
import com.egov.mvc.data.dao.userDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/11/2017.
 */

@Repository
public class UserDaoImpl implements userDao {

    private final SessionFactory sessionFactory;

    @Autowired
    public UserDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addUser(user usr) {
        usr.setEnabled(true);

        authorities authorities = new authorities();
        authorities.setUsername(usr.getUsername());
        authorities.setAuthority("ROLE_USER");
        usr.setAuthorities(authorities);

        users user = new users();
        user.setUsername(usr.getUsername());
        user.setPassword(usr.getPassword());
        user.setEnabled(true);
        sessionFactory.getCurrentSession().save(usr.getHouseaddress());
        sessionFactory.getCurrentSession().save(user);
        sessionFactory.getCurrentSession().save(usr.getAuthorities());
        sessionFactory.getCurrentSession().save(usr);
    }
    @Override
    public user getUserById(int Id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(user.class, Id);
    }

    @Override
    public user getUserByUsername(String username) {
        int id = (int) sessionFactory.getCurrentSession()
                .createQuery("select userID from user where username = ?")
                .setParameter(0,username).uniqueResult();
        return sessionFactory.getCurrentSession().get(user.class, id);
    }

    @Override
    public List getAllUsers() {
           return sessionFactory.getCurrentSession().createQuery("from user ").list();
    }

    @Override
    public void deleteUser(int Id) {
        //modify to get authority and password
        Session session = sessionFactory.getCurrentSession();
        session.delete(getUserById(Id));
        session.flush();
    }

    @Override//TestIt
    public void setRole(String username, String role){
        user user = getUserByUsername(username);
        authorities a = user.getAuthorities();
        a.setAuthority(role);
        sessionFactory.getCurrentSession().update(user);
    }

    @Override
    public int numberOfBloggers() {

        return  sessionFactory.getCurrentSession().createQuery("from authorities where authority = ?")
                .setParameter(0, "ROLE_BLOGGER")
                .list()
                .size();
    }

    @Override
    public int numberOfReporters() {
        return sessionFactory.getCurrentSession().createQuery("from authorities where authority = ?")
                .setParameter(0, "ROLE_REPORTER")
                .list()
                .size();
    }
}
