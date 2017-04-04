package com.egov.mvc.data.dao.impl;

import com.egov.mvc.data.Models.organisationsClasses.jobs;
import com.egov.mvc.data.dao.jobsDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
@Repository
public class jobsDaoImpl implements jobsDao {

    private final SessionFactory sessionFactory;

    @Autowired
    public jobsDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void newJob(jobs job) {
        sessionFactory.getCurrentSession().save(job);
    }

    @Override
    public jobs getJobById(long id) {
        return sessionFactory.getCurrentSession().get(jobs.class, id);
    }

    @Override
    public void deleteJob(long id) {
        sessionFactory.getCurrentSession().delete(getJobById(id));
    }

    @Override
    public List<jobs> getAllJobs() {
        return sessionFactory.getCurrentSession().createQuery("from jobs").list();
    }
}
