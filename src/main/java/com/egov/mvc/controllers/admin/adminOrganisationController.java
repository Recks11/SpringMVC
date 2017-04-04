package com.egov.mvc.controllers.admin;

import com.egov.mvc.data.Models.leisure;
import com.egov.mvc.data.Models.organisationsClasses.hospitals;
import com.egov.mvc.data.Models.organisationsClasses.schools;
import com.egov.mvc.data.services.hospitalService;
import com.egov.mvc.data.services.leisureService;
import com.egov.mvc.data.services.schoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/4/2017.
 */
@Controller
@SessionAttributes("addAll")
@RequestMapping("/admin/organisation")
public class adminOrganisationController {

    private Path path;

    private final schoolService school;

    private final hospitalService hospital;

    private final leisureService leisureService;

    @Autowired
    public adminOrganisationController(schoolService school, hospitalService hospital, leisureService leisureService) {
        this.school = school;
        this.hospital = hospital;
        this.leisureService = leisureService;
    }

    @RequestMapping("/school")
    public String addSchool(Model model){

        return "admin/schools";
    }

    @RequestMapping("/hospital")
    public String hospital(){
        return "admin/hospitals";
    }

    @RequestMapping("/leisure")
    public String leisure(){

        return "admin/leisure";
    }

    @PostMapping("/hospital.io")
    public String addHospital(@ModelAttribute("hospital") hospitals hospitals,
                              HttpServletRequest request){
        hospital.addHospitals(hospitals);

        MultipartFile image = hospitals.getImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\resources\\images\\hospital\\"+hospitals.getId()+".png");

        if(image != null && !image.isEmpty()){
            try{
                image.transferTo(new File(path.toString()));
            }catch(Exception e){
                e.printStackTrace();
                throw new RuntimeException("error uploading image");

            }
        }

        return "redirect:/admin/organisation/hospital";
    }
    @PostMapping("/leisure.io")
    public String addleisure(@ModelAttribute("leisure") leisure leisure,
                             HttpServletRequest request){

        leisureService.addLeisure(leisure);
        MultipartFile image = leisure.getImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\resources\\images\\leisure\\"+leisure.getId()+".png");

        if(image != null && !image.isEmpty()){
            try{
                image.transferTo(new File(path.toString()));
            }catch(Exception e){
                e.printStackTrace();
                throw new RuntimeException("error uploading image");

            }
        }
        return "redirect:/admin/organisation/leisure";
    }
    @PostMapping("/schools.io")
    public String addSchool(@ModelAttribute("school") schools schools,
                            HttpServletRequest request){
        school.addSchool(schools);

        MultipartFile image = schools.getImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\resources\\images\\schools\\"+schools.getId()+".png");

        if(image != null && !image.isEmpty()){
            try{
                image.transferTo(new File(path.toString()));
            }catch(Exception e){
                e.printStackTrace();
                throw new RuntimeException("error uploading image");

            }
        }

        return "redirect:/admin/organisation/school";
    }


    @ModelAttribute("addAll")
    public void addAll(Model model){
        model.addAttribute("school", new schools());
        model.addAttribute("hospital", new hospitals());
        model.addAttribute("leisure", new leisure());
    }

    @ModelAttribute("typesOptions")
    public List<String> types(){

        return new LinkedList<>(Arrays.asList("gym","park","sport center","fitness"));
    }
}
