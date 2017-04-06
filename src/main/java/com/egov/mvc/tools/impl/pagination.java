package com.egov.mvc.tools.impl;

import com.egov.mvc.tools.paginationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.ServletRequestUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Ijiekhuamen Rex
 * on 4/6/2017.
 */
@Service
public class pagination implements paginationService {

    private PagedListHolder pagedListHolder;

    @Autowired
    public pagination(PagedListHolder pagedListHolder){
        this.pagedListHolder = pagedListHolder;
    }

    @Override
    public PagedListHolder pagedListImpl(int size, HttpServletRequest request, List pageSource) {
        pagedListHolder = new PagedListHolder(pageSource);
        pagedListHolder.setPage(ServletRequestUtils.getIntParameter(request, "page", 0));
        pagedListHolder.setPageSize(size);
        return pagedListHolder;
    }
}
