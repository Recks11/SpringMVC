package com.egov.mvc.resolvers;


import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;


/**
 * Created by Ijiekhuamen Rex
 * on 3/12/2017.
 */
//@Component
public class GlobalHandlerExceptionResolver implements HandlerExceptionResolver {

    @Override
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
                                         Object handler, Exception e) {

        ModelAndView mav = new ModelAndView();
        mav.addObject("request",httpServletRequest.getRequestURL());
        mav.addObject("response",httpServletResponse);
        mav.addObject("handler",handler);
        mav.addObject("exception",e);
        mav.addObject("stack", Arrays.toString(e.getStackTrace()));
        mav.setViewName("exceptions/notFound");
        return mav;
    }

}
