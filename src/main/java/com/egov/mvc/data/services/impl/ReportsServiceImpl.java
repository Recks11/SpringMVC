package com.egov.mvc.data.services.impl;

import com.egov.mvc.data.Models.Report;
import com.egov.mvc.data.dao.ReportsDao;
import com.egov.mvc.data.services.ReportsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/15/2017.
 */
@Service
public class ReportsServiceImpl implements ReportsService {


    @Autowired
    private ReportsDao reportsDao;
    @Transactional
    public void add(Report report) {
        reportsDao.add(report);
    }

    @Transactional
    public void delete(Report report) {
        reportsDao.delete(report);
    }

    @Transactional
    public Report getReportById(int id) {
        return reportsDao.getReportById(id);
    }

    @Transactional
    public List getAllReports() {
        return reportsDao.getAllReports();
    }
}
