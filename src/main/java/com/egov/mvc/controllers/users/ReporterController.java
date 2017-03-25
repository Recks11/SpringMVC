package com.egov.mvc.controllers.users;

import com.egov.mvc.data.Models.News;
import com.egov.mvc.data.Models.security.logintimestamp;
import com.egov.mvc.data.services.NewsService;
import com.egov.mvc.data.services.loggedinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 3/16/2017.
 */

@Controller
@RequestMapping("/Reporter")
@SessionAttributes("Reporter")
public class ReporterController {

    private final NewsService newsService;
    private final loggedinService loggedinService;

    @Autowired
    public ReporterController(NewsService newsService, loggedinService loggedinService) {
        this.newsService = newsService;
        this.loggedinService = loggedinService;
    }


    @RequestMapping("/")
    public String loginIndex(Authentication authentication){

        loggedinService.getTimeStamp(authentication);
        return "redirect:/Reporter/dashboard";
    }

    @RequestMapping("/dashboard")
    public String dashBoard(){
        return "users/userIndex";
    }

    @RequestMapping("/newArticle")
    public String newArticle(Model model){

        model.addAttribute("News", new News());
        return "users/reporter/newArticle";
    }

    @RequestMapping("/viewArticle")
    public String viewArticles(){
        return "users/reporter/viewArticles";
    }
    @RequestMapping("/responseBody")
    public @ResponseBody List responseTest(){

        return newsService.getAllArticles();
    }

    @RequestMapping("/post.io")
    public String postArticle(Model model, @ModelAttribute("News") News news, @RequestParam String action, Principal principal){

        switch (action.toLowerCase()){
            case "post":
                news.setOwner(newsService.findArticleUserByName(principal.getName()));
                newsService.newArticle(news);
                break;
        }
        model.addAttribute("News",news);
        return "redirect:/Reporter/newArticle";
    }

    @ModelAttribute("Reporter")
    public void setLinks(Model model){
        model.addAttribute("userAccess","Reporter");
        model.addAttribute("activity","newArticle");
        model.addAttribute("activity1","viewArticle");
        model.addAttribute("activityName","New Article");
        model.addAttribute("activityName1","View Articles");
        model.addAttribute("messageForUser","Welcome To Your News Portal");
        model.addAttribute("title","e-gov article");
    }

}
