package com.egov.mvc.data.dao;

import com.egov.mvc.data.Models.Bins;
import com.egov.mvc.data.Models.userClasses.user;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/29/2017.
 */

public interface BinsDao{

    void addRequest(Bins bins);

    void updateRequest(Bins bins);

    void removeRequest(Long id);

    Bins getRequestByID(Long id);

    Bins getRequestByUser(user usr);

    List<Bins> getAllRequests();


}
