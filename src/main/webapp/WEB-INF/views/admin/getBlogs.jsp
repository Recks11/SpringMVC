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
            <%--<core:if test="${not empty deletedRequest}">--%>
                <%--<div class="alert alert-dismissable alert-success">--%>
                    <%--<button data-dismiss="alert" class="close" type="button">&times;</button>--%>
                    <%--Request by ${deletedRequest} deleted;--%>
                    <%--<br />--%>
                <%--</div>--%>

            <%--</core:if>--%>
            <core:choose>
                <core:when test="${empty blogList}">
                    <h1> No Blogs </h1>
                </core:when>
                <core:otherwise>
                    <div id="Resident Users" class="row">
                        <div class="col-xs-12 table-responsive">
                            <h2>Role change requests</h2>
                            <table class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Owner</th>
                                    <th>Date</th>
                                    <th>headline</th>
                                    <th>action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <core:forEach items="${blogList}" var="res">
                                    <tr>
                                        <td>${blogList.indexOf(res)+1}</td>
                                        <td>${res.owner.username}</td>
                                        <td>${res.date}</td>
                                        <td>${res.headline}</td>
                                        <td> <a href="<spring:url value="/admin/blogs/deleteBlog/${res.id}"/>">
                                            <i class="fa fa-plus-circle pull-left"></i></a>
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
</body>
</html>
