package com.egov.mvc.controllers.users;

import com.egov.mvc.data.Models.Bins;
import com.egov.mvc.data.services.BinsService;
import com.egov.mvc.data.services.loggedinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/29/2017.
 */
@Controller
@RequestMapping("/Bins")
@SessionAttributes("Bin")
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
    public String viewRequests(Model model, @RequestParam(value = "action", required = false) String action){
        model.addAttribute("BinRequest", binsService.getAllRequests());
        model.addAttribute("action", action);
        return "users/Bins/binRequests";
    }

    @RequestMapping("/requestHistory")
    public String History(Model model){

        model.addAttribute("approved", binsService.getApprovecRequests());
        model.addAttribute("declined", binsService.getdeniedRequests());
        return "users/Bins/requestHistory";
    }

    @RequestMapping("/approve/{binid}")
    public String approve(@PathVariable("binid") long id, Model model){
        Bins bin = binsService.getRequestByID(id);
        bin.setStatus("APPROVED");
        binsService.updateRequest(bin);
        model.addAttribute("action","request Approved");
        return "redirect:/Bins/viewRequests";
    }


    @RequestMapping("/declined/{binid}")
    public String deny(@PathVariable("binid") long id, Model model){
        Bins bin = binsService.getRequestByID(id);
        bin.setStatus("DECLINED");
        binsService.updateRequest(bin);
        model.addAttribute("action","Request deleted");
        return "redirect:/Bins/viewRequests";
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
        model.addAttribute("title","e-gov Bin Collector");
        model.addAttribute("messageForUser","Bin Collectors Portal");
        model.addAttribute("totalRequests", binsService.getdeniedRequests().size()+
                                                            binsService.getApprovecRequests().size()+binsService.getAllRequests().size());
        model.addAttribute("pendingRequests",binsService.getAllRequests().size());
        model.addAttribute("approvedRequests",binsService.getApprovecRequests().size());
        model.addAttribute("declinedRequests",binsService.getdeniedRequests().size());
    }
}
