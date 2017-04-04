package com.egov.mvc.controllers.services.notDone;

import com.egov.mvc.data.Models.organisationsClasses.jobs;
import com.egov.mvc.data.Models.organisationsClasses.userOrganisation;
import com.egov.mvc.data.Models.userClasses.user;
import com.egov.mvc.data.services.jobsService;
import com.egov.mvc.data.services.userOrganisationService;
import com.egov.mvc.data.services.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

/**
 * Created by Ijiekhuamen Rex
 * on 3/23/2017.
 */
@Controller
@RequestMapping("/services/jobs")
public class jobsController {

    private final jobsService jobsA;

    private final userService userService;

    private final userOrganisationService orgServ;

    @Autowired
    public jobsController(jobsService jobsA, userService userService, userOrganisationService orgServ) {
        this.jobsA = jobsA;
        this.userService = userService;
        this.orgServ = orgServ;
    }

    @RequestMapping("/")
    public String jobsAction(){

        return "services/jobsAction";
    }
    @RequestMapping("/AddVacancy")
    public String addVacancy(Model model){

        model.addAttribute("job", new jobs());
        return "services/addVacancy";
    }

    @PostMapping("/job.io")
    public String postVacancy(@ModelAttribute("job") jobs job, Principal principal){
        user usr = userService.getUserByUsername(principal.getName());
        userOrganisation org = orgServ.getUserOrganisationByUserId(usr.getUserID());
        System.out.println(usr.getUserID());
        System.out.println(org.getId());

        jobsA.newJob(job,org);

        return "services/addVacancy";
    }
    @RequestMapping("/viewJobs")
    public  String viewJobs(Model model){

        System.out.println(jobsA.getAllJobs().toString());
        model.addAttribute("Jobs", jobsA.getAllJobs());
        return "services/viewJobs";
    }
}
