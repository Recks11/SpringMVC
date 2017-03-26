package com.egov.mvc.data.dao.impl;

import com.egov.mvc.data.Models.Events;
import com.egov.mvc.data.dao.EventsDao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/15/2017.
 */
@Repository
public class EventsDaoImpl implements EventsDao {

    private final SessionFactory sessionFactory;

    @Autowired
    public EventsDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public Events getEventById(Long id) {
        return sessionFactory.getCurrentSession().get(Events.class, id);
    }

    @Override
    public void addEvent(Events event) {
        sessionFactory.getCurrentSession().save(event);
    }

    @Override
    public void editEvent(Events event) {
        sessionFactory.getCurrentSession().update(event);
    }

    @Override
    public void DeleteEvent(Long id) {
        sessionFactory.getCurrentSession().delete(getEventById(id));
    }

    @Override
    public List getAllEvents(){
        return sessionFactory.getCurrentSession().createQuery("from Events order by id asc").list();
    }
}
