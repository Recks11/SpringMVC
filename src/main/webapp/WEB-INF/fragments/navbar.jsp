<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 3/7/2017
  Time: 1:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<nav class="n-home navbar navbar-inverse navbar-fixed-top"> <!-- Nav Bar -->
    <div class="container">
        <div class="col-md-12">
            <div class="navbar-header text-center">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<spring:url value="/home"/>">Amuwo-Odofin</a>
            </div>
            <div class="collapse navbar-collapse text-center navbar-right" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">ALL TESTS<span class="caret"></span></a>
                        <ul class="dropdown-menu drop">
                            <li><a href="<spring:url value="/tests/administration"/>">CRUD</a></li>
                            <li><a href="<spring:url value="/council/directory"/>">other</a></li>
                            <li><a href="<spring:url value="/errors/runtimeException"/>">RUNTIME ERROR</a></li><!--what is this ?-->
                        </ul>
                    </li>
                    <li><a href="<spring:url value="/home"/>">Home</a></li>
                    <li><a href="<spring:url value="/news"/>">News</a></li>
                    <li><a href="<spring:url value="/blogs"/>">Blog</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Your Council<span class="caret"></span></a>
                        <ul class="dropdown-menu drop">
                            <li><a href="<spring:url value="/council/administration"/>">Administration</a></li>
                            <li><a href="<spring:url value="/council/directory"/>">Directory</a></li> <!--what is this ?-->
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Services <span class="caret"></span></a>
                        <ul class="dropdown-menu drop">
                            <li><a href="<spring:url value="/services/resident"/>">Resident</a></li>
                            <li><a href="<spring:url value="/services/visitor"/> ">Visitor</a></li>
                        </ul>
                    </li>
                    <li><a href="<spring:url value="/gallery"/>">Gallery</a></li>
                    <li><a href="<spring:url value="/about"/>">About</a></li>
                        <security:authorize access="hasAnyRole('ROLE_USER','ROLE_BLOGGER','ROLE_ADMIN','ROLE_REPORTER')">
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-user"></i>${pageContext.request.userPrincipal.name} <span class="caret"></span></a>
                                <ul class="dropdown-menu drop logout-drop">
                                    <li><a>
                                        <c:url var="logoutUrl" value="/logout"/>
                                        <form:form action="${logoutUrl}" method="post">
                                            <i class="fa fa-power-off"></i>
                                            <input type="submit" class="logout-btn" value="Log out" />
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                        </form:form></a>
                                    </li>
                                </ul>
                            </li>
                        </security:authorize>
                </ul>
            </div>
        </div>
    </div>
</nav>