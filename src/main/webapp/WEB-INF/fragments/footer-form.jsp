<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 3/7/2017
  Time: 12:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<footer id="footer">
    <div class="topfoot">
        <div class="container">
            <div class="col-md-4">
                <div class="foothead"><h4>Contact us</h4></div>
                <div class="infosec">
                    <p>Executive Secretary 08026543327</p>
                    <p>Deputy Executive Secretary 08091548314</p>
                    <p>Supervisor of Education 08033193525</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="foothead"><h4>Follow us</h4></div>
                <div class="infosec">
                    <ul class="social-icon">
                        <li class="bg-lightblue"><a class="soc" onclick="clickop('https://www.facebook.com/festaconline/')"> <i class="fa fa-facebook"></i></a></li>
                        <li class="bg-lightblue"><a class="soc" onclick="clickop('https://twitter.com/festaconline')"><i class="fa fa-twitter"></i></a></li>
                        <li class="bg-red"><a class="soc" onclick="clickop('https://www.youtube.com/user/festaconlinetv/')"><i class="fa fa-youtube-play"></i></a></li>
                        <li class="bg-white" style="border-radius: 18px;line-height: 0px;"><a class="soc" onclick="clickop('https://instagram.com/festaconline/')"><i class="fa fa-instagram"></i></a></li>
                    </ul>
                </div>
            </div>
            <%--<spring:url value="/report.io" var="report"/>--%>
            <div class="col-md-4">
                <security:authorize access="hasAnyRole('ROLE_USER','ROLE_BLOGGER','ROLE_REPORTER')">
                <form:form action="report.io" method="post" cssClass="contactForm" modelAttribute="Report">
                    <%--<div class="form-group">--%>
                        <%--<form:input type="text" path="name" cssClass="form-control br-radius-zero" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars"/>--%>
                        <%--<div class="validation"><form:errors path="name"/></div>--%>
                    <%--</div>--%>
                    <div class="form-group">
                       <form:input path="emailAddress" cssClass="form-control br-radius-zero" placeholder="E-mail Address"/>
                        <div class="validation"><form:errors path="emailAddress"/></div>
                    </div>
                    <div class="form-group">
                        <form:textarea   path="description" cssClass="form-control br-radius-zero" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"/>
                        <div class="validation"><form:errors path="description"/></div>
                    </div>
                    <div class="form-action">
                        <form:button name="action" Class="btn btn-default msgbtn" value="post">Send Message</form:button>
                    </div>
                </form:form>
                </security:authorize>
                <%--</form:form>--%>
            </div>
        </div>
    </div>
    <div class="bottomfoot">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    &copy; Copyright Ijiekhuamen Rex. All Rights Reserved
                    <div class="credits">
                        Designed by <a class="soc" onclick="clickop('https://twitter.com/recks11')">Ijiekhuamen Rex</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
