<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 3/15/2017
  Time: 1:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="<spring:url value="/home"/>">Back to e-Gov</a>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav">
            <li class="selected"><a href="<spring:url value="/${userAccess}/dashboard"/>"><i class="fa fa-bullseye"></i>  Dashboard</a></li>
            <li class="selected"><a href="<spring:url value="/${userAccess}/${activity}"/>"><i class="fa fa-globe"></i>  ${activityName}</a></li>
            <li class="selected"><a href="<spring:url value="/${userAccess}/${activity1}"/>"><i class="fa fa-globe"></i>  ${activityName1}</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right navbar-user">
            <li class="dropdown messages-dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages <span class="badge">2</span> <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li class="dropdown-header">2 New Messages</li>
                    <li class="message-preview">
                        <a href="#">
                            <span class="avatar"><i class="fa fa-bell"></i></span>
                            <span class="message">Security alert</span>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li class="message-preview">
                        <a href="#">
                            <span class="avatar"><i class="fa fa-bell"></i></span>
                            <span class="message">Security alert</span>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="#">Go to Inbox <span class="badge">2</span></a></li>
                </ul>
            </li>
            <li class="dropdown user-dropdown">
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-user"></i>  ${pageContext.request.userPrincipal.name}<b class="caret"></b></a>

                <ul class="dropdown-menu">
                    <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                    <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                    <li class="divider"></li>
                    <li><a >
                        <c:url var="logoutUrl" value="/logout"/>
                        <form:form action="${logoutUrl}" method="post" cssStyle="margin-bottom: 0;padding: 7px 0 7px;">
                            <i class="fa fa-power-off"></i>
                            <input type="submit" class="logout-btn" value="Log out" />
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </form:form></a>
                    </li>
                </ul>
                </c:if>
            </li>
        </ul>
    </div>
</nav>