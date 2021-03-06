package com.egov.mvc.data.dao;

import com.egov.mvc.data.Models.leisure;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/3/2017.
 */

public interface leisureDao {

    void addLeisure(leisure leisure);

    leisure getLeisureById( long id);

    void deleteLeisure(long id);

    List getAllLeisure();

    List getGyms();

    List getParks();

    List getSport();

    List getFitness();

}
