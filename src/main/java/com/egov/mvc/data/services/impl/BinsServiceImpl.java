package com.egov.mvc.data.services.impl;

import com.egov.mvc.data.Models.Bins;
import com.egov.mvc.data.Models.userClasses.user;
import com.egov.mvc.data.dao.BinsDao;
import com.egov.mvc.data.dao.userDao;
import com.egov.mvc.data.services.BinsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/29/2017.
 */
@Service
public class BinsServiceImpl implements BinsService{

    private final BinsDao binsDao;

    private final userDao userdao;

    @Autowired
    public BinsServiceImpl(BinsDao binsDao, userDao userdao) {
        this.binsDao = binsDao;
        this.userdao = userdao;
    }

    @Transactional
    public void addRequest(Bins bins, String username) {
        bins.setDate(new Date());
        bins.setUser(userdao.getUserByUsername(username));
        binsDao.addRequest(bins);
    }

    @Transactional
    public void updateRequest(Bins bins) {
        binsDao.updateRequest(bins);
    }

    @Transactional
    public void removeRequest(Long id) {
        binsDao.removeRequest(id);
    }

    @Transactional
    public Bins getRequestByID(Long id) {
        return binsDao.getRequestByID(id);
    }

    @Transactional
    public Bins getRequestByUser(user usr) {
        return null;
    }

    @Transactional
    public List<Bins> getAllRequests() {
        return binsDao.getAllRequests();
    }

    @Override
    public List<Bins> getApprovecRequests() {
        return binsDao.getApprovecRequests();
    }

    @Override
    public List<Bins> getdeniedRequests() {
        return binsDao.getdeniedRequests();
    }
}
