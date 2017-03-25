package com.egov.mvc.data.dao;

import com.egov.mvc.data.Models.Events;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/15/2017.
 */
public interface EventsDao {

    Events getEventById(Long id);//Read

    void addEvent(Events event);//Create

    void editEvent(Events event);//Update

    List getAllEvents();//Read

    void DeleteEvent (Long id);//Delete
}
