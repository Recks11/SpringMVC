package com.egov.mvc.controllers.services.notDone;

import com.egov.mvc.data.Models.Bins;
import com.egov.mvc.data.services.BinsService;
import com.egov.mvc.data.services.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;
import java.util.Date;

/**
 * Created by Ijiekhuamen Rex
 * on 3/23/2017.
 */
@Controller
@RequestMapping("/services/bins")
public class BinsController {

    private final BinsService binsService;


    @Autowired
    public BinsController(BinsService binsService) {
        this.binsService = binsService;
    }

    @RequestMapping
    public String open(){

        return "/services/bins";
    }

    @RequestMapping("/newBin")
    public String newBin(Principal principal){
        String user = principal.getName();

        binsService.addRequest(binsRequest("NEW BIN"),user);


        return "/services/resident-services";
    }
    @RequestMapping("/collectBin")
    public String collectBin(Principal principal, Model model){
        String user = principal.getName();
        binsService.addRequest(binsRequest("COLLECTION"),user);
        return "/services/resident-services";
    }
    @RequestMapping("/getrid")
    public String ridOf(Principal principal){
        String user = principal.getName();

        binsService.addRequest(binsRequest("GET_RID"),user);
        return "/services/resident-services";
    }
    @RequestMapping("/replaceBin")
    public String replaceBin(Principal principal){

        String user = principal.getName();

        binsService.addRequest(binsRequest("REPLACE BIN"),user);
        return "/services/resident-services";
    }

    private Bins binsRequest(String requestType){
        Bins bin = new Bins();
        bin.setStatus("PENDING");
        bin.setRequestType(requestType);
        bin.setDate(new Date());
        return bin;
    }
}
