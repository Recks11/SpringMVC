package com.egov.mvc.data.dao.impl;

import com.egov.mvc.data.Models.Bins;
import com.egov.mvc.data.Models.userClasses.user;
import com.egov.mvc.data.dao.BinsDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/29/2017.
 */
@Repository
public class BinsDaoImpl implements BinsDao{

    private final SessionFactory sessionFactory;

    @Autowired
    public BinsDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    @Override
    public void addRequest(Bins bins) {
        sessionFactory.getCurrentSession().save(bins);
    }

    @Override
    public void updateRequest(Bins bins) {
        sessionFactory.getCurrentSession().update(bins);
    }

    @Override
    public void removeRequest(Long id) {
        sessionFactory.getCurrentSession().delete(getRequestByID(id));
    }

    @Override
    public Bins getRequestByID(Long id) {
        return sessionFactory.getCurrentSession().get(Bins.class, id);
    }

    @Override
    public Bins getRequestByUser(user usr) {
        return null;
    }

    @Override
    public List<Bins> getAllRequests(){
        return sessionFactory.getCurrentSession().createQuery("from Bins").list();
    }
}
