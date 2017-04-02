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

    <div class="container custom-width">

            <div class="col-sm-12">
                <div id="Resident Users" class="row">
                    <div class="col-xs-12 table-responsive">
                        <h2>All Users</h2>
                        <table class="table table-striped table-bordered">
                           <thead>
                           <tr>
                               <th>#</th>
                               <th>First Name</th>
                               <th>Last Name</th>
                               <th>E-mail</th>
                               <th>Phone Number</th>
                               <th>Username</th>
                               <th>Authority</th>
                               <th>Action</th>
                           </tr>
                           </thead>
                            <tbody>
                            <core:forEach items="${resident}" var="res">
                                <tr>
                                    <td>${resident.indexOf(res)+1}</td>
                                    <td>${res.firstName}</td>
                                    <td>${res.lastName}</td>
                                    <td>${res.email}</td>
                                    <td>${res.contact}</td>
                                    <td>${res.username}</td>
                                    <td>${res.authorities.authority}</td>
                                    <td> <a href="<spring:url value="/admin/users/delete/${res.userID}"/>"><i class="fa fa-minus-circle"></i></a> </td>
                                </tr>
                            </core:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div id="bloggers" class="col-xs-12 table-responsive">
                        <h2>Bloggers</h2>
                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>E-mail</th>
                                <th>Phone Number</th>
                                <th>Username</th>
                                <th>Authority</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <core:forEach items="${blogger}" var="blog">
                                <tr>
                                    <td>${blogger.indexOf(blog)+1}</td>
                                    <td>${blog.firstName}</td>
                                    <td>${blog.lastName}</td>
                                    <td>${blog.email}</td>
                                    <td>${blog.contact}</td>
                                    <td>${blog.username}</td>
                                    <td>${blog.authorities.authority}</td>
                                    <td><a href="<spring:url value="/admin/users/delete/${blog.userID}"/>"> <i class="fa fa-minus-circle"></i> </a></td>
                                </tr>
                            </core:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <hr />

                <div class="row">
                    <div id="reporters" class="col-xs-12 table-responsive">
                        <h2>Reporters</h2>
                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>E-mail</th>
                                <th>Phone Number</th>
                                <th>Username</th>
                                <th>Authority</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <core:forEach items="${reporter}" var="report">
                                <tr>
                                    <td>${reporter.indexOf(report)+1}</td>
                                    <td>${report.firstName}</td>
                                    <td>${report.lastName}</td>
                                    <td>${report.email}</td>
                                    <td>${report.contact}</td>
                                    <td>${report.username}</td>
                                    <td>${report.authorities.authority}</td>
                                    <td> <a href="<spring:url value="/admin/users/delete/${report.userID}"/>"> <i class="fa fa-minus-circle"></i> </a></td>
                                </tr>
                            </core:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

    </div>


</div>
</body>
</html>
