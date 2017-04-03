package com.egov.mvc.data.services.impl;

import com.egov.mvc.data.Models.notDone.organisationsClasses.hospitals;
import com.egov.mvc.data.dao.hospitalDao;
import com.egov.mvc.data.services.hospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
@Service
public class hospitalServiceImpl implements hospitalService {

    private final hospitalDao hospitalDao;

    @Autowired
    public hospitalServiceImpl(hospitalDao hospitalDao) {
        this.hospitalDao = hospitalDao;
    }


    @Transactional
    public void addHospitals(hospitals hospitals) {
        hospitalDao.addHospitals(hospitals);
    }

    @Transactional
    public hospitals getHospitalsById(long id) {
        return hospitalDao.getHospitalsById(id);
    }

    @Transactional
    public void deleteHospitals(long Id) {
        hospitalDao.deleteHospitals(Id);
    }

    @Transactional
    public List getAllHospitals() {
        return hospitalDao.getAllHospitals();
    }
}
