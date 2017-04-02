package com.egov.mvc.controllers.admin;

import com.egov.mvc.data.Models.Events;
import com.egov.mvc.data.Models.userClasses.Administration;
import com.egov.mvc.data.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

/**
 * Created by Ijiekhuamen Rex
 * on 3/16/2017.
 */
@Controller
@RequestMapping(value = "/admin")
public class adminController {

    private final AdministrationService administrationService;
    private Administration administration;
    private final EventsService eventsService;
    private final userService userService;
    private final loggedinService loggedinService;
    private final roleChangeService roleService;
    private PagedListHolder pagedListHolder;
    private Events event;
    @Autowired
    public adminController(roleChangeService roleService, EventsService eventsService, userService userService,
                           Events event, loggedinService loggedinService, PagedListHolder pagedListHolder,
                           AdministrationService administrationService, Administration administration) {
        this.roleService = roleService;
        this.loggedinService = loggedinService;
        this.eventsService = eventsService;
        this.userService = userService;
        this.event = event;
        this.pagedListHolder = pagedListHolder;
        this.administrationService = administrationService;
        this.administration = administration;
    }


    @RequestMapping
    public String admin(Authentication authentication){
        loggedinService.getTimeStamp(authentication);
        return "redirect:/admin/dashboard";
    }

    @RequestMapping("/dashboard")
    public String adminHome(Model model){

        int NumberOfBloggersAndReporters = userService.numberOfBloggers() + userService.numberOfReporters();
        int NumberOfUsers = userService.getAllUsers().size();
        int NumberOfRequests = roleService.getAllRequests().size();
        model.addAttribute("numberBandR",NumberOfBloggersAndReporters);
        model.addAttribute("number", NumberOfUsers);
        model.addAttribute("numberRequests", NumberOfRequests);
        return "admin/adminindex";
    }

    @RequestMapping("/events")
    public String home(HttpServletRequest request,Model model){

        pagedListHolder = new PagedListHolder(eventsService.getAllEvents());
        int page = ServletRequestUtils.getIntParameter(request, "page", 0);
        pagedListHolder.setPage(page);
        pagedListHolder.setPageSize(3);
        model.addAttribute("Events", event);
        model.addAttribute("allEvent", pagedListHolder);
        return "admin/events";
    }

    @RequestMapping("/addAdministration")
    public String addDirectory(Model model){
        model.addAttribute("administration", administration);
        model.addAttribute("newEntry", administrationService.getAllAdministrators().get(0));
        return "admin/department";
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


    @RequestMapping(value="/crud.io", method = RequestMethod.POST)
    public String crud(@ModelAttribute("administration") Administration admini, BindingResult result,
                       @RequestParam String action, Model model){

        if(result.hasErrors()){ return "";}
        switch (action.toLowerCase()){
            case "add":
                administrationService.add(admini);
                this.administration = admini;
                break;
            case "edit":
                administrationService.edit(admini);
                this.administration = admini;
                break;
        }
        model.addAttribute("administration", admini);
        model.addAttribute("administrationList", administrationService.getAllAdministrators());
        return "redirect:/admin/addAdministration";
    }

}
