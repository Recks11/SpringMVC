<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
    <title>${userAccess.toUpperCase()}</title>
    <jsp:include page="../../fragments/adminFragments/imports-admin.jsp"/>
</head>
<body>
<jsp:include page="../../fragments/userFragments/navbar-user.jsp"/>
<div id="wrapper">
    <div class="container custom-width">
    <div class="row">
        <div class="col-lg-12">
            <h1>${messageForUser} <small>Statistics and more</small></h1>
            <div class="alert alert-dismissable alert-success">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Welcome to the ${title.toLowerCase()} dashboard!
            </div>

            <security:authorize access="hasRole('ROLE_BIN')">
                <div class="row text-center" style="margin-bottom: 30px">
                    <div class="col-md-6 no-pad">
                        <div class = "col-sm-6">
                            <c:choose>
                                <c:when test="${totalRequests == 0}">
                                    <div class="admin-dashboard-item bg-green" style="background-color: chartreuse;">
                                        <p>total requests</p>
                                        <i class="fa fa-user admin-icon pull-left"></i>
                                        <div class="pull-right admin-number">${totalRequests}</div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="admin-dashboard-item bg-red">
                                        <p>total requests</p>
                                        <i class="fa fa-user admin-icon pull-left"></i>
                                        <div class="pull-right admin-number">${totalRequests}</div>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <div class = "col-sm-6">
                            <c:choose>
                                <c:when test="${pendingRequests == 0}">
                                    <div class="admin-dashboard-item bg-green" style="background-color: chartreuse;">
                                        <p>pending Requests</p>
                                        <i class="fa fa-user admin-icon pull-left"></i>
                                        <div class="pull-right admin-number">${pendingRequests}</div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="admin-dashboard-item bg-red">
                                        <p>pending Requests</p>
                                        <i class="fa fa-user admin-icon pull-left"></i>
                                        <div class="pull-right admin-number">${pendingRequests}</div>
                                    </div>
                                </c:otherwise>
                            </c:choose>

                        </div>
                    </div>
                    <div class="col-md-6 no-pad">
                        <div class = "col-sm-6">
                                    <div class="admin-dashboard-item bg-green" style="background-color: chartreuse;">
                                        <p>Approved Requests</p>
                                        <i class="fa fa-user admin-icon pull-left"></i>
                                        <div class="pull-right admin-number">${approvedRequests}</div>
                                    </div>

                        </div>
                        <div class = "col-sm-6">
                                    <div class="admin-dashboard-item bg-red" style="background-color: chartreuse;">
                                        <p>Declined Requests</p>
                                        <i class="fa fa-user admin-icon pull-left"></i>
                                        <div class="pull-right admin-number">${declinedRequests}</div>
                                    </div>
                        </div>
                    </div>
                </div>

            </security:authorize>
        </div>
    </div>
    </div>
</div>
</body>
</html>
