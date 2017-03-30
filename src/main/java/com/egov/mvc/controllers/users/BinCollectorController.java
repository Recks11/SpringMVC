package com.egov.mvc.controllers.users;

import com.egov.mvc.data.services.BinsService;
import com.egov.mvc.data.services.loggedinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/29/2017.
 */
@Controller
@RequestMapping("/Bins")
public class BinCollectorController {

    private final loggedinService loggedinService;

    private final BinsService binsService;

    @Autowired
    public BinCollectorController(loggedinService loggedinService, BinsService binsService) {
        this.loggedinService = loggedinService;
        this.binsService = binsService;
    }

    @RequestMapping("/")
    public String loginIndex(Authentication authentication){
        loggedinService.getTimeStamp(authentication);
        return "redirect:/Bins/dashboard";
    }

    @RequestMapping("/dashboard")
    public String dashboard(){
        return "users/userIndex";
    }

    @RequestMapping("/viewRequests")
    public String viewRequests(Model model){
        model.addAttribute("BinRequest", binsService.getAllRequests());
        return "users/Bins/binRequests";
    }



    @RequestMapping("/responseBody")
    public @ResponseBody
    List responseBody(){
        return  binsService.getAllRequests();
    }

    @ModelAttribute("Bin")
    public void setLinks(Model model){
        model.addAttribute("userAccess","Bins");
        model.addAttribute("activity","viewRequests");
        model.addAttribute("activity1","requestHistory");
        model.addAttribute("activityName","Requests");
        model.addAttribute("activityName1","History");
        model.addAttribute("title","e-gov blog");
        model.addAttribute("messageForUser","Whats Up Bloggers");
    }
}
