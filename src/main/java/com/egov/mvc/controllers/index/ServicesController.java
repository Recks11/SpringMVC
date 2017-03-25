package com.egov.mvc.controllers.index;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Created by Ijiekhuamen Rex
 * on 3/7/2017.
 */
@Controller
@RequestMapping("/services")
public class ServicesController {

    @RequestMapping("/resident")
    public String showServices(Model model){
        return "home/resident-services";
    }

    @RequestMapping("/visitor")
    public String showVisitor(Model model){
        return "home/visitor-services";
    }

}

