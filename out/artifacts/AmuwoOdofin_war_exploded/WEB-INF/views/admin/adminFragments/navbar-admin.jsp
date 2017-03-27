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
        <ul class="nav navbar-nav side-nav" id="accordion">
            <li class=""><a href="<spring:url value="/admin/dashboard"/>"><i class="fa fa-bullseye"></i>  Dashboard</a></li>

            <li class="">
                <a data-toggle="collapse" data-parent="#accordion" href="#news"><i class="fa fa-tasks"></i>  News</a>
                <div id="news" class="panel-collapse collapse">
                    <div class="side-content">
                        <ul>
                            <li><a href="<spring:url value="/admin/articles"/>"><i class="fa fa-tasks"></i> View News</a></li>
                        </ul>
                    </div>
                </div>
            </li>

            <li class="">
                <a data-toggle="collapse" data-parent="#accordion" href="#events"><i class="fa fa-globe"></i>  Events</a>
                <div id="events" class="panel-collapse collapse">
                    <div class="side-content">
                        <ul>
                            <li><a href="<spring:url value="/admin/events"/>"><i class="fa fa-tasks"></i> Add/Edit Events</a></li>
                        </ul>
                    </div>
                </div>
            </li>

            <li class="">
                <a data-toggle="collapse" data-parent="#accordion" href="#blogs"><i class="fa fa-book"></i>  Blogs</a>
                <div id="blogs" class="panel-collapse collapse">
                    <div class="side-content">
                        <ul>
                            <li><a href="<spring:url value="/admin/blogs"/>"><i class="fa fa-book"></i> View Blogs</a></li>
                        </ul>
                    </div>
                </div>
            </li>

            <li class="">
                <a data-toggle="collapse" data-parent="#accordion" href="#users"><i class="fa fa-user"></i>  Users</a>
                <div id="users" class="panel-collapse collapse">
                    <div class="side-content">
                        <ul>
                            <li><a href="<spring:url value="/users/all"/>"><i class="fa fa-user"></i> All Users</a></li>
                            <li><a href="<spring:url value="/users/roles"/>"><i class="fa fa-user"></i> Switch User Role</a></li>
                            <li><a href="<spring:url value="/users/requests"/>"><i class="fa fa-user"></i> User Requests</a></li>
                            <li><a href="<spring:url value="/users/delete"/>"><i class="fa fa-user"></i> Delete Users</a></li>
                        </ul>
                    </div>
                </div>
            </li>

            <li class="">
                <a data-toggle="collapse" data-parent="#accordion" href="#administration"><i class="fa fa-handshake-o"></i>  Administration</a>
                <div id="administration" class="panel-collapse collapse">
                    <div class="side-content">
                        <ul>
                            <li><a href="<spring:url value="/admin/addAdministration"/>"><i class="fa fa-plus"></i> Department</a></li>
                            <li><a href="<spring:url value="/admin/removeAdministration"/>"><i class="fa fa-minus"></i> Department</a></li>
                            <li><a href="<spring:url value="/admin/viewAdministration"/>"><i class="fa fa-eye"></i> View Department</a></li>
                        </ul>
                    </div>
                </div>
            </li>

        </ul>

        <ul class="nav navbar-nav navbar-right navbar-user">
            <li class="dropdown messages-dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-envelope"></i> Messages <span class="badge">2</span> <b class="caret"></b></a>
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
                    <i class="fa fa-user"></i>${pageContext.request.userPrincipal.name}<b class="caret"></b></a>

                <ul class="dropdown-menu">
                    <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
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