package com.egov.mvc.controllers.users;

import com.egov.mvc.data.Models.Blog;
import com.egov.mvc.data.services.BlogService;
import com.egov.mvc.data.services.loggedinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.jsp.PageContext;
import java.security.Principal;
import java.util.Arrays;
import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/16/2017.
 */
@Controller
@RequestMapping("/Blogger")
@SessionAttributes("Blogger")
public class BloggerController {

    private final BlogService blogService;

    private final loggedinService loggedinService;

    @Autowired
    public BloggerController(BlogService blogService, loggedinService loggedinService) {
        this.blogService = blogService;
        this.loggedinService = loggedinService;
    }

    @RequestMapping("/")
    public String loginIndex(Authentication authentication){
        loggedinService.getTimeStamp(authentication);
        return "redirect:/Blogger/dashboard";
    }

    @RequestMapping("/dashboard")
    public String dashBoard(){
        //DONE
        return "users/userIndex";
    }

    @RequestMapping("/newBlog")
    public String newBlog(Model model){

        model.addAttribute("Blog", new Blog());
        return "users/blogger/newBlog";
    }

    @RequestMapping("/viewBlogs")
    public String viewBlogs(){


        return "users/blogger/viewBlogs";
    }

    @RequestMapping("/responseBody")
    public @ResponseBody List responseTest(){

        return blogService.getAllBlogs();
    }

    @RequestMapping("/post.io")
    public String postArticle(@RequestParam(value="success", required = false)String success,
            Model model, @ModelAttribute("Blog") Blog blog, @RequestParam String action, Principal principal){

        switch (action.toLowerCase()){
            case "post":
                blog.setOwner(blogService.findBlogUserByName(principal.getName()));
                blogService.addBlog(blog);
                model.addAttribute("success", "New Blog Posted!");
                break;
        }
        model.addAttribute("Blog",blog);
        return "redirect:/Blogger/newBlog";
    }

    @ModelAttribute("Blogger")
    public void setLinks(Model model){
        model.addAttribute("userAccess","Blogger");
        model.addAttribute("activity","newBlog");
        model.addAttribute("activity1","viewBlogs");
        model.addAttribute("activityName","New Blog");
        model.addAttribute("activityName1","View Blogs");
        model.addAttribute("title","e-gov blog");
        model.addAttribute("messageForUser","Whats Up Bloggers");
    }

}
