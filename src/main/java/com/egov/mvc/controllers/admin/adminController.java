package com.egov.mvc.controllers.admin;

import com.egov.mvc.data.Models.Events;
import com.egov.mvc.data.services.EventsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

/**
 * Created by Ijiekhuamen Rex
 * on 3/16/2017.
 */
@Controller
@RequestMapping(value = "/admin")
public class adminController {

    @Autowired
    private EventsService eventsService;

    @Autowired
    private Events event;

    @Autowired
    public adminController(EventsService eventsService, Events event) {
        this.eventsService = eventsService;
        this.event = event;
    }

    @RequestMapping
    public String admin(Authentication authentication){
        return "redirect:/admin/dashboard";
    }

    @RequestMapping("/dashboard")
    public String adminHome(){
        return "admin/adminindex";
    }

    @RequestMapping("/events")
    public String home(Model model){
        model.addAttribute("Events", event);
        model.addAttribute("allEvent", eventsService.getAllEvents());
        return "admin/events";
    }

    @PostMapping("/events.io")
    public String blogAction(@Valid @ModelAttribute("Events") Events events, Errors errors,
                             @RequestParam String action, Model model){
        if(errors.hasErrors()){
            return "/admin/events";}
        switch(action.toLowerCase()) {
            case "post":
                eventsService.addEvent(events);
                this.event = events;
                break;
            case "delete":
                eventsService.DeleteEvent(events.getId());
                this.event = events;
                break;
            case "edit":
                eventsService.editEvent(events);
                this.event = events;
                break;
            case "search":
                Events searchedEvent = eventsService.getEventById(events.getId());
                this.event = searchedEvent != null ? searchedEvent : new Events();
                break;
        }
        model.addAttribute("Events", events);
        model.addAttribute("allEvents", eventsService.getAllEvents());
        return "redirect:/admin/events";
    }


}
