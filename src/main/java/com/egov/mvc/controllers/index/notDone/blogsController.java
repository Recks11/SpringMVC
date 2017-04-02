package com.egov.mvc.controllers.index.notDone;

import com.egov.mvc.data.services.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Ijiekhuamen Rex
 * on 3/23/2017.
 */
@Controller
@RequestMapping("/blogs")
public class blogsController {

    private final BlogService blogService;

    private PagedListHolder pagedList;
    @Autowired
    public blogsController(BlogService blogService, PagedListHolder pagedList) {
        this.blogService = blogService;
        this.pagedList = pagedList;
    }

    @GetMapping
    public String getblogs(HttpServletRequest request, Model model){

        pagedList = new PagedListHolder(blogService.getAllBlogs());
        int page = ServletRequestUtils.getIntParameter(request, "page", 0);
        pagedList.setPage(page);
        pagedList.setPageSize(1);
        model.addAttribute("pagedList", pagedList);
        return "home/Blogs";
    }
}
