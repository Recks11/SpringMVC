package com.egov.mvc.controllers.index;

import com.egov.mvc.data.Models.security.logintimestamp;
import com.egov.mvc.data.Models.userClasses.user;
import com.egov.mvc.data.services.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

/**
 * Created by Ijiekhuamen Rex
 * on 3/15/2017.
 */
@Controller
public class loginController {

    private final userService userService;

   private user userInstance = new user();

    @Autowired
    public loginController(userService userService) {
        this.userService = userService;
    }

    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required = false)String error,
                        @RequestParam(value="logout", required = false)String logout,
                        Model model, @ModelAttribute("Logintime") logintimestamp login){

        if(error != null){
            model.addAttribute("error", "invalid username or password");
        }

        if(logout != null){
            model.addAttribute("message","You have been logged out");
        }

        return "home/login";
    }


    @RequestMapping("/register")
    public String addUser(Model model){
        model.addAttribute("User", userInstance);

        return "home/addUser";
    }

    @PostMapping("/register")
    public String addUser(@ModelAttribute("User")user usr, BindingResult result, Model model){
        model.addAttribute("User", userInstance);
        userService.addUser(usr);
        return "home/index";
    }


}
