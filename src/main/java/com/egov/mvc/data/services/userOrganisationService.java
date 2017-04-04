package com.egov.mvc.data.services;

import com.egov.mvc.data.Models.organisationsClasses.userOrganisation;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
public interface userOrganisationService {

    void addUserOrganisationForUser(userOrganisation userOrganisation, String username);

    void deleteUserOrganisationForUser(long id);

    userOrganisation getUserOrganisationById(long id);

    List getAllUserOrganisations();

    userOrganisation getUserOrganisationByUserId(int userId);
}
