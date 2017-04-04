package com.egov.mvc.controllers.services;

import com.egov.mvc.data.services.hospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Ijiekhuamen Rex
 * on 3/23/2017.
 */
@Controller
@RequestMapping("/health")
public class healthController {

    @Autowired
    private hospitalService hospitalService;

    @RequestMapping("/viewHospitals")
    public String viewHospitals(Model model){

        model.addAttribute("hospital", hospitalService.getAllHospitals());

        return "services/hospitals";
    }
}
