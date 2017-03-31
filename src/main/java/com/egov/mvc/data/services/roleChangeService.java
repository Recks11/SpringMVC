package com.egov.mvc.data.services;

import com.egov.mvc.data.Models.components.RoleChange;
import com.egov.mvc.data.Models.userClasses.user;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/30/2017.
 */
public interface roleChangeService {
    void newRoleRequest(RoleChange roleChange);

    void deleteRoleRequest(long Id);

    void getRoleRequestById(long Id);

    user getUserByName(String name);

    public RoleChange findRoleByUsername(String name);

    List getAllRequests();
}
