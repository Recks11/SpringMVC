package com.egov.mvc.controllers.services;

import com.egov.mvc.data.services.schoolService;
import com.egov.mvc.tools.paginationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Ijiekhuamen Rex
 * on 3/23/2017.
 */
@Controller
@RequestMapping("/schools")
public class schoolsController {

    private final schoolService schoolService;

    private paginationService paginationService;

    @Autowired
    public schoolsController(schoolService schoolService, paginationService paginationService) {
        this.schoolService = schoolService;
        this.paginationService = paginationService;
    }

    @RequestMapping("/findSchools")
    public String findSchools(Model model, HttpServletRequest request){

        model.addAttribute("school", paginationService.pagedListImpl(4,request, schoolService.getAllSchools()));
        return "services/schools";
    }

    @RequestMapping("/findDaycare")
    public String findDaycare(Model model){

        model.addAttribute("school", schoolService.getAllSchools());
        return "services/schools";
    }

    @RequestMapping("/resumptionDates")
    public String findResumptionDates(Model model){

        model.addAttribute("schoolResume", schoolService.getResumptionDates());
        return "services/schoolsResumption";
    }


}
