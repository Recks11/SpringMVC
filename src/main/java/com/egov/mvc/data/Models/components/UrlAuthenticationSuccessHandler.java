package com.egov.mvc.data.Models.components;

import com.egov.mvc.data.Models.security.logintimestamp;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Collection;

public class UrlAuthenticationSuccessHandler
  implements AuthenticationSuccessHandler {
  
    private Log logger = LogFactory.getLog(this.getClass());
 
    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
 
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request,
                                        HttpServletResponse response, Authentication authentication)
      throws IOException {
  
        handle(request, response, authentication);
        clearAuthenticationAttributes(request);
    }
 
    private void handle(HttpServletRequest request,
                        HttpServletResponse response, Authentication authentication)
      throws IOException {
  
        String targetUrl = determineTargetUrl(authentication);
 
        if (response.isCommitted()) {
            logger.debug(
              "Response has already been committed. Unable to redirect to "
              + targetUrl);
            return;
        }
        redirectStrategy.sendRedirect(request, response, targetUrl);
    }
 
    private String determineTargetUrl(Authentication authentication) {
        boolean isReporter = false;
        boolean isAdmin = false;
        boolean isBlogger = false;
        boolean isUser = false;
        boolean isBin = false;
        Collection<? extends GrantedAuthority> authorities
         = authentication.getAuthorities();
        for (GrantedAuthority grantedAuthority : authorities) {
            if (grantedAuthority.getAuthority().equals("ROLE_REPORTER")) {
                isReporter = true;
                break;
            }if (grantedAuthority.getAuthority().equals("ROLE_USER")) {
                isUser = true;
                break;
            }if (grantedAuthority.getAuthority().equals("ROLE_BIN")) {
                isBin = true;
                break;
            }if (grantedAuthority.getAuthority().equals("ROLE_BLOGGER")) {
                isBlogger = true;
                break;
            } else if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
                isAdmin = true;
                break;
            }
        }
 
        if (isReporter) {
            return "/Reporter/";
        } else if (isAdmin) {
            return "/admin/";
        } else if (isUser) {
            return "/home";
        } else if (isBin) {
            return "/Bins/";
        } else if (isBlogger) {
            return "/Blogger/";
        } else {
            throw new IllegalStateException();
        }
    }
 
    private void clearAuthenticationAttributes(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session == null) {
            return;
        }
        session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
    }
 
    public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
        this.redirectStrategy = redirectStrategy;
    }
    protected RedirectStrategy getRedirectStrategy() {
        return redirectStrategy;
    }
}