package com.egov.mvc.controllers.services;

import com.egov.mvc.data.services.leisureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Ijiekhuamen Rex
 * on 3/23/2017.
 */
@Controller
@RequestMapping("/services/leisure")
public class leisureController {

    @Autowired
    private leisureService leisure;

    @RequestMapping("/all")
    public String getLeisure(Model model){

        model.addAttribute("gym",leisure.getGyms());
        model.addAttribute("park", leisure.getParks());
        model.addAttribute("sport", leisure.getSport());
        model.addAttribute("fitness",leisure.getFitness());
        return "services/leisure";
    }
}
