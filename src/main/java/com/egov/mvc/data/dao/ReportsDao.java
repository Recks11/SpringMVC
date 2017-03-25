package com.egov.mvc.data.dao;

import com.egov.mvc.data.Models.Report;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/15/2017.
 */
public interface ReportsDao {

    void add(Report report);
    void delete(Report report);
    Report getReportById(int id);
    List getAllReports();

}
