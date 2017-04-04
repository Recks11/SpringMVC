package com.egov.mvc.controllers.services.notDone;

import com.egov.mvc.data.services.jobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Ijiekhuamen Rex
 * on 3/23/2017.
 */
@Controller
@RequestMapping("/services/jobs")
public class jobsController {

    @Autowired
    private jobsService jobs;

    @RequestMapping("/")
    public String jobsAction(){

        return "services/jobsAction";
    }
    @RequestMapping("/viewJobs")
    public  String viewJobs(Model model){

        System.out.println(jobs.getAllJobs().toString());
        model.addAttribute("Jobs", jobs.getAllJobs());
        return "services/viewJobs";
    }
}
