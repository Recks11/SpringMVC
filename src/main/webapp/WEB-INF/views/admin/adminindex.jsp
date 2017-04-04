<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 3/16/2017
  Time: 1:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <jsp:include page="../../fragments/adminFragments/imports-admin.jsp"/>
</head>
<body>
<jsp:include page="../../fragments/adminFragments/navbar-admin.jsp"/>
<div id="wrapper">
    <div class="container custom-width">
    <div class="row">
        <div class="col-lg-12">
            <h1>Dashboard <small>Statistics and more</small></h1>
            <div class="alert alert-dismissable alert-success">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Welcome to the admin dashboard ${pageContext.request.userPrincipal.name}!
                <br />
            </div>
        </div>
    </div>
        <!---->
        <div class="row text-center" style="margin-bottom: 30px">
            <div class="col-md-6 no-pad">
                <div class = "col-sm-6">
                    <div class="admin-dashboard-item bg-blue">
                        <p>Total Number Of Users</p>
                        <i class="fa fa-globe admin-icon pull-left"></i>
                        <div class="pull-right admin-number">${number}</div>
                    </div>
                </div>
                <div class = "col-sm-6">
                    <c:choose>
                        <c:when test="${numberRequests == 0}">
                    <div class="admin-dashboard-item bg-green" style="background-color: chartreuse;">
                        <p>Role change requests</p>
                        <i class="fa fa-user admin-icon pull-left"></i>
                        <div class="pull-right admin-number">${numberRequests}</div>
                    </div>
                        </c:when>
                    <c:otherwise>
                        <div class="admin-dashboard-item bg-red">
                            <p>Role change requests</p>
                            <i class="fa fa-user admin-icon pull-left"></i>
                            <div class="pull-right admin-number">${numberRequests}</div>
                        </div>
                    </c:otherwise>
                    </c:choose>

                </div>
            </div>
            <div class="col-md-6 no-pad">
                <div class = "col-sm-6">
                    <div class="admin-dashboard-item bg-green">
                        <p>Bloggers & Reporters</p>
                        <i class="fa fa-user admin-icon pull-left"></i>
                        <div class="pull-right admin-number">${numberBandR}</div>
                    </div>
                </div>
                <div class = "col-sm-6">
                    <div class="admin-dashboard-item bg-white">
                        <p>Number of Registered Organisations</p>
                        <i class="fa fa-user admin-icon pull-left"></i>
                        <div class="pull-right admin-number">999</div>
                    </div>
                </div>
            </div>
        </div>
        <!---->

    </div>
</div>
<script src=""></script>
</body>
</html>
