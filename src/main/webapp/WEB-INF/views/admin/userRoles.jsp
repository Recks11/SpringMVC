<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 3/15/2017
  Time: 1:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags" %>

<html>
<head>
    <title>Admin</title>
    <jsp:include page="../../fragments/adminFragments/imports-admin.jsp"/>
</head>
<body>
<div id="wrapper">
<jsp:include page="../../fragments/adminFragments/navbar-admin.jsp"/>

    <%--<jsp:useBean id="allUsers" scope="request"--%>
                 <%--type="org.springframework.beans.support.PagedListHolder" />--%>

    <c:url value="/admin/events" var="pagedLink">
        <c:param name="page" value="~"/>
    </c:url>

    <div class="container">

        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#menu0">All Users</a></li>
            <li><a data-toggle="tab" href="#menu1">Bloggers</a></li>
            <li><a data-toggle="tab" href="#menu3">Reporters</a></li>
        </ul>

        <div class="tab-content">
            <div id="menu0" class="tab-pane fade in active">
                <div class="row">
                    <div id="Resident Users">
                        <div class="col-sm-12 table-responsive">
                            <table class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Username</th>
                                    <th>Authority</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <core:forEach items="${resident}" var="res">
                                    <tr>
                                        <td>${resident.indexOf(res)+1}</td>
                                        <td>${res.username}</td>
                                        <td>${res.authorities.authority}</td>
                                        <td>
                                            <a href="<spring:url value="/admin/users/delete/${res.userID}"/>"
                                               role="button" class="btn btn-danger">Delete</a>
                                            <a href="<spring:url value="/admin/users/roleexists/${res.userID}"/>"
                                               role="button" class="btn btn-primary">Make Blogger</a>
                                            <a href="<spring:url value="/admin/users/roleexists/${res.userID}"/>"
                                               role="button" class="btn btn-success">Make Reporter</a>
                                        </td>
                                    </tr>
                                </core:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div id="menu1" class="tab-pane fade">
                <div class="row">
                    <div id="bloggers" class="col-md-12 table-responsive">
                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Username</th>
                                <th>Authority</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <core:forEach items="${blogger}" var="blog">
                                <tr>
                                    <td>${blogger.indexOf(blog)+1}</td>
                                    <td>${blog.username}</td>
                                    <td>${blog.authorities.authority}</td>
                                    <td>
                                        <a href="<spring:url value="/admin/users/delete/${blog.userID}"/>"
                                           role="button" class="btn btn-danger">Delete</a>
                                        <a href="<spring:url value="/admin/users/roleexists/${blog.userID}"/>"
                                           role="button" class="btn btn-primary">Make Blogger</a>
                                        <a href="<spring:url value="/admin/users/roleexists/${blog.userID}"/>"
                                           role="button" class="btn btn-success">Make Reporter</a>
                                    </td>
                                </tr>
                            </core:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="menu3" class="tab-pane fade">
                <div class="row">
                    <div id="reporters" class="col-sm-12 table-responsive">
                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Username</th>
                                <th>Authority</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <core:forEach items="${reporter}" var="report">
                                <tr>
                                    <td>${reporter.indexOf(report)+1}</td>
                                    <td>${report.username}</td>
                                    <td>${report.authorities.authority}</td>
                                    <td>
                                        <a href="<spring:url value="/admin/users/delete/${report.userID}"/>"
                                           role="button" class="btn btn-danger">Delete</a>
                                        <a href="<spring:url value="/admin/users/roleexists/${report.userID}"/>"
                                           role="button" class="btn btn-primary">Make Blogger</a>
                                        <a href="<spring:url value="/admin/users/roleexists/${report.userID}"/>"
                                           role="button" class="btn btn-success">Make Reporter</a>
                                    </td>
                                </tr>
                            </core:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
