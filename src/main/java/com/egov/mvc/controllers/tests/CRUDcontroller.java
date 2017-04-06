package com.egov.mvc.controllers.tests;

import com.egov.mvc.data.Models.organisationsClasses.schools;
import com.egov.mvc.data.Models.userClasses.Administration;
import com.egov.mvc.data.services.AdministrationService;
import com.egov.mvc.data.services.schoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.nio.file.Path;


/**
 * Created by Ijiekhuamen Rex
 * on 3/12/2017.
 */
@Controller
@RequestMapping("/tests")
public class CRUDcontroller {

//    private Path path;
    private AdministrationService administrationService;

    private Administration administration;

    private final schoolService schoolService;

    @Autowired
    public CRUDcontroller(AdministrationService administrationService, Administration administration, schoolService schoolService) {
        this.administrationService = administrationService;
        this.administration = administration;
        this.schoolService = schoolService;
    }

    @RequestMapping("/administration")
    public String setupForm(Model model){
        model.addAttribute("administration", administration);
        model.addAttribute("administrationList", administrationService.getAllAdministrators());
        return "administration";
    }

    @RequestMapping("/fileUpload")
    public String addSchool(Model model){
        model.addAttribute("school", new schools());

        return "addOrganisation";
    }

    @PostMapping("/fileUpload")
    public String addSchool(@ModelAttribute("school") schools school,
                            HttpServletRequest request){

//        schoolService.addSchool(school);
//        MultipartFile image = school.getImage();
//        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
//        path = Paths.get(rootDirectory + "\\resources\\images\\schools\\"+school.getId()+".png");
//
//        if(image != null && !image.isEmpty()){
//            try{
//                image.transferTo(new File(path.toString()));
//            }catch(Exception e){
//                e.printStackTrace();
//                throw new RuntimeException("error uploading image");
//
//            }
//        }


        return "redirect:/tests/fileUpload";
    }

}
