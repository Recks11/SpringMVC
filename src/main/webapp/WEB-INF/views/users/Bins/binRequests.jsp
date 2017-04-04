<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
    <title>${title.toUpperCase()}</title>
    <jsp:include page="../../../fragments/adminFragments/imports-admin.jsp"/>
</head>
<body>
<jsp:include page="../../../fragments/userFragments/navbar-user.jsp"/>
<div id="wrapper">
    <div class="container custom-width">
        <div class="row">
            <div class="col-xs-12">
                <core:if test="${not empty action}">
                    <div class="alert alert-dismissable alert-success">
                        <button data-dismiss="alert" class="close" type="button">&times;</button>
                        ${action}
                        <br />
                    </div>

                </core:if>
                <core:choose>
                    <core:when test="${empty BinRequest}">
                        <h1> No bin requests </h1>
                    </core:when>
                    <core:otherwise>
                        <div id="Resident Users" class="row">
                            <div class="col-xs-12 table-responsive">
                                <h2>Role change requests</h2>
                                <table class="table table-striped table-bordered">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Request Date</th>
                                        <th>Username</th>
                                        <th>Full Name</th>
                                        <th>Address</th>
                                        <th>request type</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <core:forEach items="${BinRequest}" var="res">
                                        <tr>
                                            <td>${BinRequest.indexOf(res)+1}</td>
                                            <td>${res.date}</td>
                                            <td>${res.user.username}</td>
                                            <td>${res.user.firstName} ${res.user.lastName}</td>
                                            <td>${res.user.houseaddress.housenumber},
                                                    ${res.user.houseaddress.streetName}, ${res.user.houseaddress.city} </td>
                                            <td>${res.requestType}</td>
                                            <td> <a href="<spring:url value="/Bins/approve/${res.id}"/>">
                                                <i class="fa fa-plus-circle pull-left"></i></a>

                                                <a href="<spring:url value="/Bins/declined/${res.id}"/>">
                                                    <i class="fa fa-minus-circle pull-right"></i></a> </td>
                                        </tr>
                                    </core:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <hr />
                    </core:otherwise>
                </core:choose>
            </div>
        </div>
    </div>
</div>
</body>
</html>
