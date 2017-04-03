package com.egov.mvc.data.dao.impl;

import com.egov.mvc.data.Models.notDone.organisationsClasses.leisure;
import com.egov.mvc.data.dao.leisureDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
@Repository
public class leisureDaoImpl implements leisureDao {

    private final SessionFactory sessionFactory;

    @Autowired
    public leisureDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addLeisure(leisure leisure) {
         sessionFactory.getCurrentSession().save(leisure);
    }

    @Override
    public leisure getLeisureById(long id) {
        return sessionFactory.getCurrentSession().get(leisure.class, id);
    }

    @Override
    public List getAllLeisure() {
        return sessionFactory.getCurrentSession().createQuery("from leisure ").list();
    }

    @Override
    public void deleteLeisure(long id) {
        sessionFactory.getCurrentSession().delete(getLeisureById(id));
    }
}
