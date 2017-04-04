package com.egov.mvc.data.services;

import com.egov.mvc.data.Models.organisationsClasses.schools;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
public interface schoolService {

    void addSchool(schools school);

    schools getSchoolsById(long id);

    void deleteSchool(long Id);

    List getAllSchools();

    List getResumptionDates();
}
