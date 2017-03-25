package com.egov.mvc.controllers.index.notDone;

import com.egov.mvc.data.Models.Report;
import com.egov.mvc.data.Models.userClasses.user;
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

/**
 * Created by Ijiekhuamen Rex
 * on 3/6/2017.
 */
@Controller
public class HomeController {


    @Autowired
    private userDao userDao;

    @Autowired
    private ReportsService reportsService;

    @Autowired
    private EventsService eventsService;

    Report rep = new Report();

    @RequestMapping("/home")
    public String showHome(Model model){
        model.addAttribute("Report", new Report());
        model.addAttribute("events", eventsService.getAllEvents());
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

