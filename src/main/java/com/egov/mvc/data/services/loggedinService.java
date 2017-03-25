package com.egov.mvc.data.services;

import com.egov.mvc.data.Models.security.logintimestamp;
import org.springframework.security.core.Authentication;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/21/2017.
 */
public interface loggedinService {
    void addtimestamp(logintimestamp logintimestamp);
    void deletetimestamp(long id);
    logintimestamp gettimestampbyid(long id);
    List getAllTimestamos();
    void getTimeStamp(Authentication authentication);
}
