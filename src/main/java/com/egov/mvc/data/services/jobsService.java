package com.egov.mvc.data.services;

import com.egov.mvc.data.Models.organisationsClasses.jobs;
import com.egov.mvc.data.Models.organisationsClasses.userOrganisation;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
public interface jobsService {

    void newJob(jobs job, userOrganisation organisation);

    jobs getJobById(long id);

    void deleteJob(long id);

    List<jobs> getAllJobs();
}
