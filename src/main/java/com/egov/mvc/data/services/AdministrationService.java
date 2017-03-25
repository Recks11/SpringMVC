package com.egov.mvc.data.services;

import com.egov.mvc.data.Models.userClasses.Administration;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/12/2017.
 */
public interface AdministrationService {

     void add(Administration administration);
     void edit(Administration administration);
     void delete(int administration);
     Administration getAdministrator(int administratorId);
     List getAllAdministrators();
}
