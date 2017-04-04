package com.egov.mvc.data.services.impl;

import com.egov.mvc.data.Models.organisationsClasses.userOrganisation;
import com.egov.mvc.data.dao.userOrganisationDao;
import com.egov.mvc.data.services.userOrganisationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
@Service
public class userOrganisationServiceImpl implements userOrganisationService {

    private final userOrganisationDao userOrganisationDao;

    @Autowired
    public userOrganisationServiceImpl(userOrganisationDao userOrganisationDao) {
        this.userOrganisationDao = userOrganisationDao;
    }

    @Transactional
    public void addUserOrganisationForUser(userOrganisation userOrganisation, String username) {
        userOrganisationDao.addUserOrganisationForUser(userOrganisation, username);
    }

    @Transactional
    public void deleteUserOrganisationForUser(int id) {
        userOrganisationDao.deleteUserOrganisationForUser(id);
    }

    @Transactional
    public userOrganisation getUserOrganisationById(int id) {
        return userOrganisationDao.getUserOrganisationById(id);
    }

    @Transactional
    public List getAllUserOrganisations() {
        return userOrganisationDao.getAlluserOrganisations();
    }

    @Transactional
    public userOrganisation getUserOrganisationByUserId(int userId) {
        return userOrganisationDao.getUserOrganisationByUserId(userId);
    }
}
