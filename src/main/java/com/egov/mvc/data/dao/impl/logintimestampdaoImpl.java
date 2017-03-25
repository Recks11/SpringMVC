package com.egov.mvc.data.dao.impl;

import com.egov.mvc.data.Models.security.logintimestamp;
import com.egov.mvc.data.dao.logintimestampDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/21/2017.
 */
@Repository
public class logintimestampdaoImpl implements logintimestampDao {

    private final SessionFactory sessionFactory;

    @Autowired
    public logintimestampdaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addtimestamp(logintimestamp logintimestamp) {
        sessionFactory.getCurrentSession().save(logintimestamp);
    }

    @Override
    public void deletetimestamp(long id) {
        sessionFactory.getCurrentSession().delete(gettimestampbyid(id));
    }

    @Override
    public logintimestamp gettimestampbyid(long id) {
        return sessionFactory.getCurrentSession().get(logintimestamp.class, id);
    }

    @Override
    public List getAllTimestamos() {
        return sessionFactory.getCurrentSession().createQuery("from logintimestamp ").list();
    }
}
