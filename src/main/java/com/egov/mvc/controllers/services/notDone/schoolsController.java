package com.egov.mvc.controllers.services.notDone;

import com.egov.mvc.data.services.schoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Ijiekhuamen Rex
 * on 3/23/2017.
 */
@Controller
@RequestMapping("/schools")
public class schoolsController {

    private final schoolService schoolService;

    @Autowired
    public schoolsController(schoolService schoolService) {
        this.schoolService = schoolService;
    }

    @RequestMapping("/findSchools")
    public String findSchools(Model model){

        model.addAttribute("school", schoolService.getAllSchools());
        return "services/schools";
    }

}
