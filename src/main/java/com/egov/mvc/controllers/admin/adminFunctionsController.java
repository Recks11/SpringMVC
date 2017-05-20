package com.egov.mvc.controllers.admin;

import com.egov.mvc.data.Models.components.RoleChange;
import com.egov.mvc.data.Models.security.authorities;
import com.egov.mvc.data.Models.userClasses.user;
import com.egov.mvc.data.services.BlogService;
import com.egov.mvc.data.services.NewsService;
import com.egov.mvc.data.services.roleChangeService;
import com.egov.mvc.data.services.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Ijiekhuamen Rex
 * on 4/2/2017.
 */
@Controller
@RequestMapping("/admin/users")
public class adminFunctionsController {

    private final BlogService blogService;

    private final NewsService newsService;

    private final userService userService;

    private final roleChangeService roleChangeService;

    @Autowired
    public adminFunctionsController(userService userService, roleChangeService roleChangeService,
                                    BlogService blogService, NewsService newsService) {
        this.userService = userService;
        this.roleChangeService = roleChangeService;
        this.blogService = blogService;
        this.newsService = newsService;
    }

    @RequestMapping("/all")
    public String allUsers(Model model){

        return "admin/allUsers";}

    @RequestMapping("/roles")
    public String userRoles(Model model){

        return "/admin/userRoles";}

    @RequestMapping("/requests")
    public String requests(Model model, @RequestParam(value = "deletedRequest", required = false) String deletedRequest ){

        model.addAttribute("deletedRequest", deletedRequest);
        return "/admin/requests";}



        /*CRUD FUNCTIONALITIES*/
    @RequestMapping("/delete/{userId}")
    public String deleteUsers(@PathVariable("userId") int userID){

        //DeleteBinRequests
        if(blogService.BlogExists(userID)){
            System.out.println("BLOG STATUS IS" + blogService.BlogExists(userID));
            blogService.deleteUserBlogs(userID);
        }//deleteBlogs

        if(newsService.articleExists(userID)){
            newsService.deleteArticlesForUser(userID);
        }//DeleteReports

        if (roleChangeService.RoleRequestExists(userID)){
            roleChangeService.deleteRoleRequest(roleChangeService.getRoleRequestByUserID(userID).getId());
        }//Delete Role Requests

        userService.deleteUser(userID);//Delete User
        return "redirect:/admin/users/all";

    }

    @RequestMapping("/roleexists/{userId}")
    public String testroleUsers(@PathVariable("userId") int userID){
        System.out.println("ROLE CHANGE IS "+roleChangeService.RoleRequestExists(userID));
        System.out.println("ARTICLE IS "+newsService.articleExists(userID));
        System.out.println("BLOGS IS  "+blogService.BlogExists(userID));
        return "redirect:/admin/users/requests";
    }

    @RequestMapping("/approveRole/{roleId}")
    public String approveRole(@PathVariable("roleId") long roleid){

        RoleChange role = roleChangeService.getRoleRequestById(roleid);
        user user = roleChangeService.getUserByRoleRequestId(roleid);
        authorities authorities = user.getAuthorities();
        authorities.setAuthority(role.getRole());
        userService.setRole(user, authorities);
        roleChangeService.deleteRoleRequest(roleid);
        return "redirect:/admin/users/requests";
    }

    @RequestMapping("/deleteRole/{roleid}")
    public String deleteRole(@PathVariable("roleid") long roleid, Model model){
        String deleteduser = roleChangeService.getUserByRoleRequestId(roleid).getUsername();
        roleChangeService.deleteRoleRequest(roleid);
        model.addAttribute("deletedRequest", deleteduser);
        return "redirect:/admin/users/requests";
    }
    @ModelAttribute
    public void initAttributes(Model model){
        /*/add*/
        model.addAttribute("blogger", userService.bloggers());
        model.addAttribute("reporter", userService.reporters());
        model.addAttribute("resident", userService.resident());

        /*/requests*/
        model.addAttribute("requests", roleChangeService.getAllRequests());
    }
}
