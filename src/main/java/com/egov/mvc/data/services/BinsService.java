package com.egov.mvc.data.services;

import com.egov.mvc.data.Models.notDone.organisationsClasses.Bins;
import com.egov.mvc.data.Models.userClasses.user;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/29/2017.
 */
public interface BinsService {

    void addRequest(Bins bins, String username);

    void updateRequest(Bins bins);

    void removeRequest(Long id);

    Bins getRequestByID(Long id);

    Bins getRequestByUser(user usr);

    List<Bins> getAllRequests();
}
