package com.egov.mvc.data.dao.impl;

import com.egov.mvc.data.Models.notDone.organisationsClasses.hospitals;
import com.egov.mvc.data.dao.hospitalDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
@Repository
public class hospitalDaoImpl implements hospitalDao {

    private final SessionFactory sessionFactory;

    @Autowired
    public hospitalDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addHospitals(hospitals hospitals) {
        sessionFactory.getCurrentSession().save(hospitals);
    }

    @Override
    public hospitals getHospitalsById(long id) {
        return sessionFactory.getCurrentSession().get(hospitals.class, id);
    }

    @Override
    public List getAllHospitals() {
        return sessionFactory.getCurrentSession().createQuery("from hospitals ").list();
    }

    @Override
    public void deleteHospitals(long Id) {
        sessionFactory.getCurrentSession().delete(getHospitalsById(Id));
    }
}
