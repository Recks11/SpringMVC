package com.egov.mvc.data.dao.impl;

import com.egov.mvc.data.Models.components.RoleChange;
import com.egov.mvc.data.Models.userClasses.user;
import com.egov.mvc.data.dao.roleChangeDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/31/2017.
 */
@Repository
public class roleChangeDaoImpl implements roleChangeDao {

    private final SessionFactory sessionFactory;

    @Autowired
    public roleChangeDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void newRoleRequest(RoleChange roleChange) {
        sessionFactory.getCurrentSession().save(roleChange);
    }

    @Override
    public void deleteRoleRequest(long Id) {
        sessionFactory.getCurrentSession().delete(getRoleRequestById(Id));
    }

    @Override
    public RoleChange getRoleRequestById(long Id) {
        return sessionFactory.getCurrentSession().get(RoleChange.class, Id);
    }

    @Override
    public user getUserByName(String name) {
        return (user) sessionFactory.getCurrentSession()
                .createQuery("from user where username = ? ")
                .setParameter(0,name).uniqueResult();
    }

    @Override
    public RoleChange findRoleByUsername(String name) {
        return (RoleChange) sessionFactory.getCurrentSession()
                .createQuery("from RoleChange where usr.username = ? ")
                .setParameter(0, name).uniqueResult();
    }

    @Override
    public List getAllRequests() {
        return sessionFactory.getCurrentSession().createQuery("from RoleChange ").list();
    }
}
