package com.egov.mvc.data.dao.impl;

import com.egov.mvc.data.Models.organisationsClasses.userOrganisation;
import com.egov.mvc.data.dao.userDao;
import com.egov.mvc.data.dao.userOrganisationDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
@Repository
public class userOrganisationDaoImpl implements userOrganisationDao {

    private final SessionFactory sessionFactory;

    private final userDao userDao;

    @Autowired
    public userOrganisationDaoImpl(SessionFactory sessionFactory, userDao userDao) {
        this.sessionFactory = sessionFactory;
        this.userDao = userDao;
    }

    @Override
    public void addUserOrganisationForUser(userOrganisation userOrganisation, String username) {

        userOrganisation.setUsr(userDao.getUserByUsername(username));
        sessionFactory.getCurrentSession().save(userOrganisation.getAddress());
        sessionFactory.getCurrentSession().save(userOrganisation);
    }

    @Override
    public void deleteUserOrganisationForUser(int id) {
        sessionFactory.getCurrentSession().delete(getUserOrganisationById(id));
    }

    @Override
    public userOrganisation getUserOrganisationById(int id) {
        return sessionFactory.getCurrentSession().get(userOrganisation.class, id);
    }

    @Override
    public List getAlluserOrganisations() {
        return sessionFactory.getCurrentSession().createQuery("from userOrganisation ").list();
    }

    @Override
    public userOrganisation getUserOrganisationByUserId(int userId) {


        return (userOrganisation) sessionFactory.getCurrentSession().createQuery
                ("from userOrganisation where usr.id = ?").setParameter(0,userId)
                .uniqueResult();
    }
}
