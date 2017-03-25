package com.egov.mvc.data.dao.impl;

import com.egov.mvc.data.Models.Report;
import com.egov.mvc.data.dao.ReportsDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/15/2017.
 */
@Repository
public class ReportsDaoImpl implements ReportsDao {

    private SessionFactory sessionFactory;

    @Autowired
    public ReportsDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void add(Report report) {
        sessionFactory.getCurrentSession().save(report);
    }

    @Override
    public void delete(Report report) {
        sessionFactory.getCurrentSession().delete(report);
    }

    @Override
    public Report getReportById(int id) {
        return sessionFactory.getCurrentSession().get(Report.class, id);
    }

    @Override
    public List getAllReports() {
        return sessionFactory.getCurrentSession().createQuery("from Report").list();
    }
}
