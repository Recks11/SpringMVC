package com.egov.mvc.data.services.impl;

import com.egov.mvc.data.Models.leisure;
import com.egov.mvc.data.dao.leisureDao;
import com.egov.mvc.data.services.leisureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
@Service
public class leisureServiceImpl implements leisureService {

    private final leisureDao leisureDao;

    @Autowired
    public leisureServiceImpl(leisureDao leisureDao) {
        this.leisureDao = leisureDao;
    }


    @Transactional
    public void addLeisure(leisure leisure) {
        leisureDao.addLeisure(leisure);
    }

    @Transactional
    public leisure getLeisureById(long id) {
        return leisureDao.getLeisureById(id);
    }

    @Transactional
    public List getAllLeisure() {
        return leisureDao.getAllLeisure();
    }

    @Transactional
    public List getGyms() {
        return leisureDao.getGyms();
    }

    @Transactional
    public List getParks() {
        return leisureDao.getParks();
    }

    @Transactional
    public List getSport() {
        return leisureDao.getSport();
    }

    @Transactional
    public List getFitness() {
        return leisureDao.getFitness();
    }

    @Transactional
    public void deleteLeisure(long id) {
        leisureDao.deleteLeisure(id);
    }
}
