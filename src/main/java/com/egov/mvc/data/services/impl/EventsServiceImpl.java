package com.egov.mvc.data.services.impl;

import com.egov.mvc.data.Models.Events;
import com.egov.mvc.data.dao.EventsDao;
import com.egov.mvc.data.services.EventsService;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/15/2017.
 */
@Service
public class EventsServiceImpl implements EventsService {

    private final EventsDao eventsDao;

    @Autowired
    public EventsServiceImpl(EventsDao eventsDao) {
        this.eventsDao = eventsDao;
    }

    @Transactional
    public Events getEventById(Long id) {
        return eventsDao.getEventById(id);
    }

    @Transactional
    public void addEvent(Events event) {
        eventsDao.addEvent(event);
    }

    @Transactional
    public void editEvent(Events event) {
        eventsDao.editEvent(event);
    }

    @Transactional
    public void DeleteEvent(Long id) {
        eventsDao.DeleteEvent(id);
    }

    @Transactional
    public List getAllEvents(){
        return eventsDao.getAllEvents();
    }
}
