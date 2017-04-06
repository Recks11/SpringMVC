package com.egov.mvc.tools;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Ijiekhuamen Rex
 * on 4/6/2017.
 */
public interface imageUploadService {

    void upload(HttpServletRequest request, String location);

}
