package com.egov.mvc.data.dao;

import com.egov.mvc.data.Models.security.logintimestamp;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/21/2017.
 */
public interface logintimestampDao {

    void addtimestamp(logintimestamp logintimestamp);
    void deletetimestamp(long id);
    logintimestamp gettimestampbyid(long id);
    List getAllTimestamos();
}
