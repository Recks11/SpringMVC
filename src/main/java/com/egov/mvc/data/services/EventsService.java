package com.egov.mvc.data.services;

import com.egov.mvc.data.Models.Events;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/15/2017.
 */
public interface EventsService {
    Events getEventById(Long id);

    void addEvent(Events event);

    void editEvent(Events event);

    List getAllEvents();

    void DeleteEvent (Long id);
}
