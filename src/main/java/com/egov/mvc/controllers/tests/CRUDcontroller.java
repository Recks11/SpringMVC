package com.egov.mvc.controllers.tests;

import com.egov.mvc.data.Models.userClasses.Administration;
import com.egov.mvc.data.services.AdministrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


/**
 * Created by Ijiekhuamen Rex
 * on 3/12/2017.
 */
@Controller
@RequestMapping("/tests")
public class CRUDcontroller {

    private AdministrationService administrationService;

    private Administration administration;

    @Autowired
    public CRUDcontroller(AdministrationService administrationService, Administration administration) {
        this.administrationService = administrationService;
        this.administration = administration;
    }

    @RequestMapping("/administration")
    public String setupForm(Model model){
        model.addAttribute("administration", administration);
        model.addAttribute("administrationList", administrationService.getAllAdministrators());
        return "administration";
    }
//
//    @RequestMapping(value="/crud.io", method = RequestMethod.POST)
//    public String crud(@ModelAttribute("administration") Administration admini, BindingResult result,
//                       @RequestParam String action, Model model){
//
//        if(result.hasErrors()){ return "";}
//        switch (action.toLowerCase()){
//            case "add":
//                administrationService.add(admini);
//                this.administration = admini;
//                break;
//            case "edit":
//                administrationService.edit(admini);
//                this.administration = admini;
//                break;
//            case "delete":
//                administrationService.delete(admini.getAdministratorId());
//                this.administration = admini;
//                break;
//            case "search":
//                Administration searchedAdmin = administrationService.getAdministrator(admini.getAdministratorId());
//                this.administration = searchedAdmin!=null ? searchedAdmin : new Administration();
//                break;
//        }
//        model.addAttribute("administration", admini);
//        model.addAttribute("administrationList", administrationService.getAllAdministrators());
//        return "redirect:/tests/administration"+"#administrationSection";
//    }

}
