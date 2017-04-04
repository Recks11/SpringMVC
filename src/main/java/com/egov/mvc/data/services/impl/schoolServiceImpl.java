package com.egov.mvc.data.services.impl;

import com.egov.mvc.data.Models.organisationsClasses.schools;
import com.egov.mvc.data.dao.schoolsDao;
import com.egov.mvc.data.services.schoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
@Service
public class schoolServiceImpl implements schoolService {

    @Transactional
    public List getResumptionDates() {
        return schoolDao.getResumptionDates();
    }

    private  schoolsDao schoolDao;

    @Autowired
    public schoolServiceImpl(schoolsDao schoolDao) {
        this.schoolDao = schoolDao;
    }

    @Transactional
    public void addSchool(schools school) {
        schoolDao.addSchool(school);
    }

    @Transactional
    public schools getSchoolsById(long id) {
        return schoolDao.getSchoolsById(id);
    }

    @Transactional
    public void deleteSchool(long Id) {
        schoolDao.deleteSchool(Id);
    }

    @Transactional
    public List getAllSchools() {
        return schoolDao.getAllSchools();
    }
}
