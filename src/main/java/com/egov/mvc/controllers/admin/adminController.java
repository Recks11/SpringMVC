package com.egov.mvc.controllers.admin;

import com.egov.mvc.data.Models.Events;
import com.egov.mvc.data.Models.userClasses.Administration;
import com.egov.mvc.data.services.*;
import com.egov.mvc.tools.paginationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

/**
 * Created by Ijiekhuamen Rex
 * on 3/16/2017.
 */
@Controller
@RequestMapping(value = "/admin")
public class adminController {

    private paginationService pagination;
    private final AdministrationService administrationService;
    private Administration administration;
    private final EventsService eventsService;
    private final userService userService;
    private final loggedinService loggedinService;
    private final roleChangeService roleService;

    private Events event;
    private BlogService blogService;
    private final NewsService newsService;
    @Autowired
    public adminController(roleChangeService roleService, EventsService eventsService, userService userService,
                           Events event, loggedinService loggedinService,
                           AdministrationService administrationService, Administration administration, BlogService blogService,
                           NewsService newsService, paginationService pagination) {
        this.roleService = roleService;
        this.loggedinService = loggedinService;
        this.eventsService = eventsService;
        this.userService = userService;
        this.event = event;

        this.administrationService = administrationService;
        this.administration = administration;
        this.blogService = blogService;
        this.newsService = newsService;
        this.pagination = pagination;
    }

    /********PAGED LIST HOLDER DECLARATION**/
//    public PagedListHolder pagedListImpl(int size, HttpServletRequest request, List pageSource){
//
//        pagedListHolder = new PagedListHolder(pageSource);
//        pagedListHolder.setPage(ServletRequestUtils.getIntParameter(request, "page", 0));
//        pagedListHolder.setPageSize(size);
//        return pagedListHolder;
//    }
    /*********************************/

    @RequestMapping
    public String admin(Authentication authentication){
        loggedinService.getTimeStamp(authentication);

        return "redirect:/admin/dashboard";
    }

    @RequestMapping("/dashboard")
    public String adminHome(Model model){

        int NumberOfBloggersAndReporters = userService.numberOfBloggers() + userService.numberOfReporters();
        int NumberOfUsers = userService.getAllUsers().size();
        int NumberOfRequests = roleService.getAllRequests().size();
        model.addAttribute("numberBandR",NumberOfBloggersAndReporters);
        model.addAttribute("number", NumberOfUsers);
        model.addAttribute("numberRequests", NumberOfRequests);
        return "admin/adminindex";
    }

    @RequestMapping("/events")
    public String home(Model model,
                       @RequestParam(value = "eventsObject", required = false)
                               Events eventObject){

        model.addAttribute("Events", event);
        model.addAttribute("eventsObject", eventObject);
        model.addAttribute("allEvent", eventsService.getAllEvents().get(0));
        return "admin/events";
    }

    @RequestMapping("/events/allEvents")
    public String allEvents(HttpServletRequest request,Model model){

        PagedListHolder pagedList = pagination.pagedListImpl(8, request, eventsService.getAllEvents());
        model.addAttribute("Events", event);
        model.addAttribute("allEvent", pagedList);
        return "admin/allEvents";
    }



    @RequestMapping("/events/deleteEvent/{eventId}")
    public String deleteEvent(@PathVariable("eventId") long eventId){

        eventsService.DeleteEvent(eventId);
        return "redirect:/admin/events/allEvents";
    }

    @PostMapping("/events.io")
    public String blogAction(@Valid @ModelAttribute("Events") Events events, Errors errors,
                             Model model){
        if(errors.hasErrors()){
            return "/admin/events";}

        eventsService.addEvent(events);
        model.addAttribute("eventsObject", events);
        return "redirect:/admin/events";
    }



    @RequestMapping("/blogs")
    public String getAllBlogs(Model model, @RequestParam(value = "deletedBlog", required = false) String deletedBlog){

        model.addAttribute("blogList", blogService.getAllBlogs());
        model.addAttribute("deletedBlog", deletedBlog);
        return "admin/getBlogs";
    }


    @RequestMapping("/blogs/deleteBlog/{blogId}")
    public String deleteBlog(Model model,@PathVariable("blogId") int blogId){

        model.addAttribute("deletedBlog", (blogService.getBlogById(blogId).getHeadline()
                +" By "+
                blogService.getBlogById(blogId).getOwner().getUsername()));
        blogService.deleteBlog(blogId);
        return "redirect:/admin/blogs";
    }


    @RequestMapping("/articles")
    public String getAllArticles(Model model, @RequestParam(value = "deletedArticle", required = false) String deletedArticle){
        model.addAttribute("articleList", newsService.getAllArticles());
        model.addAttribute("deletedArticle", deletedArticle);
        return "admin/getArticles";
    }

    @RequestMapping("/articles/deleteArticle/{articleId}")
    public String deleteArticle(Model model,@PathVariable("articleId") int articleId){

        model.addAttribute("deletedArticle", (newsService.getArticleById(articleId).getHeadline()
                +" By "+
                newsService.getArticleById(articleId).getOwner().getUsername()));
        newsService.deleteArticle(articleId);
        return "redirect:/admin/articles";
    }


    @RequestMapping("/addAdministration")
    public String addDepartment(Model model){
        model.addAttribute("administration", administration);
        model.addAttribute("newEntry", administrationService.getAllAdministrators().get(0));
        return "admin/department";
    }

    @RequestMapping("/viewAdministration")
    public String viewDepartment(Model model, HttpServletRequest request,
                                 @RequestParam(value = "deletedDepartment", required = false)String DeletedMember){

        PagedListHolder pagedList = pagination.pagedListImpl(8,request, administrationService.getAllAdministrators());

        model.addAttribute("deletedDepartment", DeletedMember);
        model.addAttribute("departmentPagedList", pagedList);

        return "admin/viewDepartment";
    }

    @RequestMapping(value="/crud.io", method = RequestMethod.POST)
    public String crud(@ModelAttribute("administration") Administration admini, BindingResult result,
                       @RequestParam String action, Model model){

        if(result.hasErrors()){ return "admin/department";}
        switch (action.toLowerCase()){
            case "add":
                administrationService.add(admini);
                this.administration = admini;
                break;
            case "edit":
                administrationService.edit(admini);
                this.administration = admini;
                break;
        }
        model.addAttribute("administration", admini);
        model.addAttribute("administrationList", administrationService.getAllAdministrators());
        return "redirect:/admin/addAdministration";
    }

    @RequestMapping("/viewAdministration/{administratorId}")
    public String deleteDepartmentMember(@PathVariable("administratorId") int administratorId, Model model){
        String deleted = administrationService.getAdministrator(administratorId).getName();
        administrationService.delete(administratorId);
        model.addAttribute("deletedDepartment", deleted);
        return "redirect:/admin/viewAdministration";
    }


}
