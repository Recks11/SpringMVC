package com.egov.mvc.data.services.impl;

import com.egov.mvc.data.Models.userClasses.Administration;
import com.egov.mvc.data.dao.administrationDao;
import com.egov.mvc.data.services.AdministrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/12/2017.
 */
@Service
public class AdministrationServiceImpl implements AdministrationService {

    private final administrationDao administrationDao;

    @Autowired
    public AdministrationServiceImpl(administrationDao administrationDao) {
        this.administrationDao = administrationDao;
    }

    @Transactional
    public void add(Administration administration) {
        administrationDao.add(administration);
    }

    @Transactional
    public void edit(Administration administration) {
        administrationDao.edit(administration);
    }

    @Transactional
    public void delete(int administration) {
        administrationDao.delete(administration);
    }

    @Transactional
    public Administration getAdministrator(int administratorId) {
        return administrationDao.getAdministrator(administratorId);
    }

    @Transactional
    public List getAllAdministrators() {
        return administrationDao.getAllAdministrators();
    }
}
