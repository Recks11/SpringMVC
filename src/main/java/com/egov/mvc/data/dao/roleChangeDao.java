package com.egov.mvc.data.dao;

import com.egov.mvc.data.Models.components.RoleChange;
import com.egov.mvc.data.Models.userClasses.user;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/30/2017.
 */

public interface roleChangeDao {

    void newRoleRequest(RoleChange roleChange);

    void deleteRoleRequest(long Id);

    RoleChange getRoleRequestById(long Id);

    user getUserByName(String name);

    RoleChange findRoleByUsername(String name);

    List getAllRequests();

}
