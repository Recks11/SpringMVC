package com.egov.mvc.controllers.index.notDone;

import com.egov.mvc.data.Models.Report;
import com.egov.mvc.data.Models.components.RoleChange;
import com.egov.mvc.data.Models.organisationsClasses.userOrganisation;
import com.egov.mvc.data.dao.userDao;
import com.egov.mvc.data.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
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

    private final NewsService newsService;

    private final roleChangeService roleService;

    @Autowired
    private userOrganisationService userOrg;

    private Report rep = new Report();

    @Autowired
    public HomeController(userDao userDao, ReportsService reportsService, EventsService eventsService, roleChangeService roleService, NewsService newsService) {
        this.userDao = userDao;
        this.reportsService = reportsService;
        this.eventsService = eventsService;
        this.roleService = roleService;
        this.newsService = newsService;
    }

    @RequestMapping("/home")
    public String showHome(Model model){

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
                report.setType("other");
                reportsService.add(report);
                this.rep = report;
                break;
        }
        return "redirect:/home";
    }

    @RequestMapping("/newRole")
    public String newRole(){
        return "home/newRole";
    }

    @GetMapping("/newRole/blog")
    public String bloggerRequest(Principal principal, RoleChange roleChange, Model model){

        String user = principal.getName();
        roleChange.setUsr(roleService.getUserByName(user));
        roleChange.setRole("ROLE_BLOGGER");
        if(roleService.findRoleByUsername(user) != null){
            model.addAttribute("RequestExists", "error");
            model.addAttribute("requestrole", "Blogger");
            return "home/newRole";
        }else{
        roleService.newRoleRequest(roleChange);
            return "redirect:/home";
        }
    }
    @GetMapping("/newRole/reporter")
    public String reporterRequest(Principal principal, RoleChange roleChange, Model model){

        String username = principal.getName();
        roleChange.setUsr(roleService.getUserByName(username));
        roleChange.setRole("ROLE_REPORTER");
        if(roleService.findRoleByUsername(username) != null) {
            model.addAttribute("RequestExists", "error");
            model.addAttribute("requestrole", "Reporter");
            return "home/newRole";
        }else {
            roleService.newRoleRequest(roleChange);
            return "redirect:/home";
        }
    }


    @RequestMapping("/registerOrganisation")
    public String newOrganisation(Model model){
        model.addAttribute("userOrganisation", new userOrganisation());
        return "home/addOrganisation";
    }

    @PostMapping("/register.io")
    public String persistOrganisation(@ModelAttribute("userOrganisation") userOrganisation usrO, Principal principal){

        userOrg.addUserOrganisationForUser(usrO, principal.getName());

        return "redirect:/home";
    }
    @ModelAttribute
    public void init(Model model){
        model.addAttribute("Report", new Report());
        List event4List = (List) eventsService.getAllEvents().stream().limit(4).collect(Collectors.toList());
        List news4List = (List) newsService.getAllArticles().stream().limit(4).collect(Collectors.toList());
        model.addAttribute("events", event4List);
        model.addAttribute("news", news4List);


    }
}

