package com.egov.mvc.data.services.impl;

import com.egov.mvc.data.Models.notDone.jobs;
import com.egov.mvc.data.Models.notDone.organisationsClasses.userOrganisation;
import com.egov.mvc.data.dao.jobsDao;
import com.egov.mvc.data.services.jobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
@Service
public class jobsServiceImpl implements jobsService {

    private final jobsDao jobsDao;

    @Autowired
    public jobsServiceImpl(jobsDao jobsDao) {
        this.jobsDao = jobsDao;
    }

    @Transactional
    public void newJob(jobs job, userOrganisation organisation) {
        job.setOrganisation(organisation);
        jobsDao.newJob(job);
    }

    @Transactional
    public jobs getJobById(long id) {
        return jobsDao.getJobById(id);
    }

    @Transactional
    public void deleteJob(long id) {
        jobsDao.deleteJob(id);
    }

    @Transactional
    public List getAllJobs() {
        return jobsDao.getAllJobs();
    }
}
