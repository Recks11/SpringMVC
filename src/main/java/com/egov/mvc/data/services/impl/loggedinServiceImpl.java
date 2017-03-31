package com.egov.mvc.data.services.impl;

import com.egov.mvc.data.Models.security.logintimestamp;
import com.egov.mvc.data.dao.logintimestampDao;
import com.egov.mvc.data.services.loggedinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/21/2017.
 */
@Service
public class loggedinServiceImpl implements loggedinService {

    private final logintimestampDao login;

    @Autowired
    public loggedinServiceImpl(logintimestampDao login) {
        this.login = login;
    }

    @Transactional
    public void addtimestamp(logintimestamp logintimestamp) {
        logintimestamp.setDate(new Date());
        login.addtimestamp(logintimestamp);
    }

    @Transactional
    public void deletetimestamp(long id) {
        login.deletetimestamp(id);
    }

    @Transactional
    public logintimestamp gettimestampbyid(long id) {
        return login.gettimestampbyid(id);
    }

    @Transactional
    public List getAllTimestamos() {
        return login.getAllTimestamos();
    }

    @Transactional
    public void getTimeStamp(Authentication authentication) {
        logintimestamp logintimes = new logintimestamp();
        logintimes.setUsername(authentication.getName());
        this.addtimestamp(logintimes);
    }
}
