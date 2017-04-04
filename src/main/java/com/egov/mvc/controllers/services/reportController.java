package com.egov.mvc.controllers.services;

import com.egov.mvc.data.Models.Report;
import com.egov.mvc.data.services.ReportsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/23/2017.
 */
@Controller
@RequestMapping("/services/reports")
public class reportController {

    @Autowired
    private ReportsService reportsService;

    @RequestMapping("/all")
    public String allReports(Model model){

        return "services/reports";
    }

    @PostMapping("/report.io")
    public String postReport(@ModelAttribute("Report") Report report){

        reportsService.add(report);
        return "services/reports";
    }

    @ModelAttribute("Report")
    public Report addReportObject(Model model){
        return new Report();
    }

    @ModelAttribute("typesOptions")
    public List<String> types(){

        return new LinkedList<>(Arrays.asList("damages","misconduct","noise pollution","other"));
    }
}