package com.egov.mvc.data.dao;

import com.egov.mvc.data.Models.organisationsClasses.jobs;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
public interface jobsDao {

    void newJob(jobs job);

    jobs getJobById(long id);

    void deleteJob(long id);

    List<jobs> getAllJobs();
}
