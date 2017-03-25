package com.egov.mvc.data.dao.impl;

import com.egov.mvc.data.Models.userClasses.Administration;
import com.egov.mvc.data.dao.administrationDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/12/2017.
 */
@Repository
public class AdministratorDaoImpl implements administrationDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(Administration administration) {
        sessionFactory.getCurrentSession().save(administration);
    }

    @Override
    public void edit(Administration administration) {
        sessionFactory.getCurrentSession().update(administration);
    }


    @Override
    public void delete(int administration) {
        sessionFactory.getCurrentSession().delete(getAdministrator(administration));
    }

    @Override
    public Administration getAdministrator(int administratorId) {
        return sessionFactory.getCurrentSession().get(Administration.class, administratorId);
    }

    @Override
    public List getAllAdministrators() {
        return sessionFactory.getCurrentSession().createQuery("from Administration").list();
    }
}
