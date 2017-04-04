package com.egov.mvc.data.dao;

import com.egov.mvc.data.Models.organisationsClasses.userOrganisation;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
public interface userOrganisationDao {

    void addUserOrganisationForUser(userOrganisation userOrganisation, String username);

    void deleteUserOrganisationForUser(int id);

    userOrganisation getUserOrganisationById(int id);

    List getAlluserOrganisations();

    userOrganisation getUserOrganisationByUserId(int userId);
}
