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

    <jsp:useBean id="allEvent" scope="request"
    type="org.springframework.beans.support.PagedListHolder" />

    <c:url value="/admin/events/allEvents" var="pagedLink">
        <c:param name="page" value="~"/>
    </c:url>

    <div class="container custom-width">

    <%--<div class="col-sm-12">--%>
        <%--<core:if test="${not empty deletedArticle}">--%>
            <%--<div class="alert alert-dismissable alert-success">--%>
                <%--<button data-dismiss="alert" class="close" type="button">&times;</button>--%>
                 <%--You deleted ${deletedArticle}--%>
                <%--<br />--%>
            <%--</div>--%>

        <%--</core:if>--%>
        <core:choose>
            <core:when test="${empty allEvent.pageList}">
                <h1> No Events </h1>
            </core:when>
            <core:otherwise>
                <div id="Resident Users" class="row">
                    <div class="col-xs-12 table-responsive">
                        <h2>All Events</h2>
                        <div>
                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Date</th>
                                <th>Title</th>
                                <th>Description</th>
                                <th>action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <core:forEach items="${allEvent.pageList}" var="res">
                                <tr>
                                    <td>${allEvent.pageList.indexOf(res) + 1}</td>
                                    <td>${res.date}</td>
                                    <td>${res.title}</td>
                                    <td style="overflow: hidden">${res.description}</td>
                                    <td class="text-center">
                                        <a href="<spring:url value="/admin/events/deleteEvent/${res.id}"/>">
                                        <i class="fa fa-minus-circle "></i></a>
                                </tr>
                            </core:forEach>
                            </tbody>
                        </table>
                        </div>
                        <div class="pull-right">
                            <tg:pagination pagedList="${allEvent}" pagedLink="${pagedLink}"/>
                        </div>
                    </div>
                </div>
                <hr />
            </core:otherwise>
        </core:choose>
    </div>
</div>
</body>
</html>
