
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${userAccess.toUpperCase()}</title>
    <jsp:include page="../../../fragments/adminFragments/imports-admin.jsp"/>
</head>
<body>
<jsp:include page="../../../fragments/userFragments/navbar-user.jsp"/>
<div id="wrapper">
    <div class="container custom-width">
        <div class="row">
            <div class="col-xs-12">

                <core:choose>
                    <core:when test="${empty approved && empty declined}">
                        <h1> No bin requests </h1>
                        <br/>
                    </core:when>
                    <core:otherwise>
                        <div id="Resident Users" class="row">
                            <core:choose>
                                <core:when test="${empty approved}">
                                    <h1>No Approved requests</h1>
                                </core:when>
                                <core:otherwise>
                            <div class="col-xs-12 table-responsive">
                                <h2>Approved Requests</h2>
                                <table class="table table-striped table-bordered">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Request Date</th>
                                        <th>User</th>
                                        <th>Username</th>
                                        <th>Address</th>
                                        <th>request type</th>
                                        <th>status</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <core:forEach items="${approved}" var="res">
                                        <tr>
                                            <td>${approved.indexOf(res)+1}</td>
                                            <td>${res.date}</td>
                                            <td>${res.user.firstName} ${res.user.lastName}</td>
                                            <td>${res.user.houseaddress.housenumber},
                                                    ${res.user.houseaddress.streetName}, ${res.user.houseaddress.city} </td>
                                            <td>${res.requestType}</td>
                                            <td> ${res.status} </td>
                                        </tr>
                                    </core:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <br/>
                                </core:otherwise>
                            </core:choose>
                            <core:choose>
                                <core:when test="${empty declined}">
                                    <h1>No Declined Requests</h1>
                                </core:when>
                                <core:otherwise>
                            <div class="col-xs-12 table-responsive">
                                <h2>Declined Requests</h2>
                                <table class="table table-striped table-bordered">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Request Date</th>
                                        <th>User</th>
                                        <th>Username</th>
                                        <th>Address</th>
                                        <th>request type</th>
                                        <th>status</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <core:forEach items="${declined}" var="res">
                                        <tr>
                                            <td>${declined.indexOf(res)+1}</td>
                                            <td>${res.date}</td>
                                            <td>${res.user.firstName} ${res.user.lastName}</td>
                                            <td>${res.user.houseaddress.housenumber},
                                                    ${res.user.houseaddress.streetName}, ${res.user.houseaddress.city} </td>
                                            <td>${res.requestType}</td>
                                            <td> ${res.status} </td>
                                        </tr>
                                    </core:forEach>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                        <hr />
                                </core:otherwise>
                            </core:choose>
                    </core:otherwise>
                </core:choose>
            </div>
        </div>
        </div>
    </div>
</body>
</html>
