package com.egov.mvc.data.services;

import com.egov.mvc.data.Models.notDone.organisationsClasses.leisure;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */
public interface leisureService {

    void addLeisure(leisure leisure);

    leisure getLeisureById( long id);

    void deleteLeisure(long id);

    List getAllLeisure();
}
