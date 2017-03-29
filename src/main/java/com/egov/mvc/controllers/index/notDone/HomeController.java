package com.egov.mvc.controllers.index.notDone;

import com.egov.mvc.data.Models.Report;
import com.egov.mvc.data.dao.userDao;
import com.egov.mvc.data.services.EventsService;
import com.egov.mvc.data.services.ReportsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by Ijiekhuamen Rex
 * on 3/6/2017.
 */
@Controller
public class HomeController {


    private final userDao userDao;

    private final ReportsService reportsService;

    private final EventsService eventsService;

    private Report rep = new Report();

    @Autowired
    public HomeController(userDao userDao, ReportsService reportsService, EventsService eventsService) {
        this.userDao = userDao;
        this.reportsService = reportsService;
        this.eventsService = eventsService;
    }

    @RequestMapping("/home")
    public String showHome(Model model){
        model.addAttribute("Report", new Report());
        List event4List = (List) eventsService.getAllEvents().stream().limit(4).collect(Collectors.toList());
        model.addAttribute("events", event4List);
        return "home/index";
    }

    @RequestMapping("/about")
    public String showAbout(){
        return "home/about";
    }

    @PostMapping("/report.io")
    public String pushReport(@ModelAttribute("Reports") Report report, BindingResult result, @RequestParam String action, Model model ){

        switch(action.toLowerCase()){
            case "post":
                reportsService.add(report);
                this.rep = report;
                break;
        }
        return "redirect:/home";
    }

}

