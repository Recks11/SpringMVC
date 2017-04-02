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

    <%--<jsp:useBean id="allEvent" scope="request"--%>
                 <%--type="org.springframework.beans.support.PagedListHolder" />--%>

    <c:url value="/admin/events" var="pagedLink">
        <c:param name="page" value="~"/>
    </c:url>

    <div class="container custom-width">
        <div class="row topRow">
            <div class="col-sm-8">
                <div class="row">
                    <div class="col-xs-12">
                        <h2>Add Council Member</h2>
                        <form:form action="crud.io" method="post" modelAttribute="administration">

                            <div class="form-group">
                                <label for="email">Administrator Id:</label>
                                    <form:input path="administratorId" cssClass="form-control" disabled="true"/>
                            </div>

                            <div class="form-group">
                                <label for="name">Name:</label>

                                    <form:input path="name" cssClass="form-control"/>
                            </div>

                            <div class="form-group">
                                <label for="designation">Designation:</label>

                                    <form:input path="designation" cssClass="form-control"/>
                            </div>

                            <div class="form-group">
                                <label for="phoneNumber">Phone Number:</label>
                                    <form:input path="phoneNumber" cssClass="form-control"/>
                            </div>
                            <div class="form-group">
                                <label for="email">E-Mail Address:</label>

                                    <form:input path="email" cssClass="form-control"/>
                            </div>
                            <div class="text-center">
                                    <button type="submit" name="action" class="btn btn-success text-center" value="add">Add</button>
                                    <%--<button type="submit" name="action" class="btn btn-primary " value="edit">Edit</button>--%>
                                    <%--<button type="submit" name="action" class="btn btn-danger" value="delete">Delete</button>--%>
                                    <%--<button type="submit" name="action" class="btn btn-default" value="search">Search</button>--%>
                            </div>
                        </form:form>
                    </div>
                </div>
                <hr />
            </div>
            <div class="col-sm-4">
                <div class="row">
                    <div class="col-xs-12">
                        <h3 class="no-top-margin">Last Added</h3>
                        <div class="eventsection">
                            <%--<core:forEach items="${newEntry}" var="administrator">--%>
                                <div class="panel panel-default" id="events-panel">
                                    <div class="panel-heading">${newEntry.name}
                                        <button type="button" class="close" data-target="#events-panel" data-dismiss="alert"> <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                                        </button>
                                    </div>
                                    <div class="panel-body">
                                        <p>${newEntry.designation}</p>
                                        <p>${newEntry.email}</p>
                                    </div>
                                </div>
                            <%--</core:forEach>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>
</body>
</html>
