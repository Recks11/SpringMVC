package com.egov.mvc.controllers.index.notDone;

import com.egov.mvc.data.services.AdministrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Created by Ijiekhuamen Rex
 * on 3/27/2017.
 */
@Controller
@RequestMapping("/council")
public class yourCouncilController {

    private final AdministrationService administrationService;

    @Autowired
    public yourCouncilController(AdministrationService administrationService) {
        this.administrationService = administrationService;
    }

    @RequestMapping("/administration")
    public String administration(Model model){

        model.addAttribute("administration", administrationService.getAllAdministrators());
        return "home/administration";
    }

    @RequestMapping("/directory")
    public String directory(){

        return"home/directory";
    }

}
