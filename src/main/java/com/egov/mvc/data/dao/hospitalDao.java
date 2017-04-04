package com.egov.mvc.data.dao;

import com.egov.mvc.data.Models.organisationsClasses.hospitals;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
public interface hospitalDao {

    void addHospitals(hospitals hospitals);

    hospitals getHospitalsById(long id);

    void deleteHospitals(long Id);

    List getAllHospitals();
}
