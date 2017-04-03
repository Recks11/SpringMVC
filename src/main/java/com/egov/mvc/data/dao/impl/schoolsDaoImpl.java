package com.egov.mvc.data.dao.impl;

import com.egov.mvc.data.Models.components.houseAddress;
import com.egov.mvc.data.Models.notDone.organisationsClasses.schools;
import com.egov.mvc.data.dao.schoolsDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
@Repository
public class schoolsDaoImpl implements schoolsDao {

    private  SessionFactory sessionFactory;

    @Autowired
    public schoolsDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addSchool(schools school) {

        houseAddress address = school.getAddress();
        sessionFactory.getCurrentSession().save(address);
        sessionFactory.getCurrentSession().save(school);
    }

    @Override
    public schools getSchoolsById(long id) {
        return sessionFactory.getCurrentSession().get(schools.class, id);
    }

    @Override
    public void deleteSchool(long Id) {
        sessionFactory.getCurrentSession().delete(Id);
    }

    @Override
    public List getAllSchools() {
        return sessionFactory.getCurrentSession().createQuery("from schools ").list();
    }
}
