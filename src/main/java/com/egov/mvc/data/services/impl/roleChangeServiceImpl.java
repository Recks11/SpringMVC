package com.egov.mvc.data.services.impl;

import com.egov.mvc.data.Models.components.RoleChange;
import com.egov.mvc.data.Models.userClasses.user;
import com.egov.mvc.data.dao.roleChangeDao;
import com.egov.mvc.data.dao.userDao;
import com.egov.mvc.data.services.roleChangeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/30/2017.
 */
@Service
public class roleChangeServiceImpl implements roleChangeService {

    private final roleChangeDao roleChangeDao;
    @Autowired
    private userDao userDao;

    @Autowired
    public roleChangeServiceImpl(roleChangeDao roleChangeDao) {
        this.roleChangeDao = roleChangeDao;
    }


    @Transactional
    public void newRoleRequest(RoleChange roleChange) {
        roleChangeDao.newRoleRequest(roleChange);
    }

    @Transactional
    public void deleteRoleRequest(long Id) {
        roleChangeDao.deleteRoleRequest(Id);
    }

    @Transactional
    public RoleChange getRoleRequestById(long Id) {
        return roleChangeDao.getRoleRequestById(Id);
    }

    @Transactional
    public user getUserByName(String name) {
        return userDao.getUserByUsername(name);
    }

    @Transactional
    public user getUserByRoleRequestId(Long id) {
        return roleChangeDao.getUserByRoleRequestId(id);
    }

    @Transactional
    public String getRoleByRoleId(Long RoleId) {
        return roleChangeDao.getRoleByRoleId(RoleId);
    }

    @Transactional
    public RoleChange findRoleByUsername(String name){
        return roleChangeDao.findRoleByUsername(name);
    }

    @Transactional
    public List getAllRequests(){
        return roleChangeDao.getAllRequests();
    }
}
