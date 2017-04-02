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


    <div class="container custom-width">
        <div class="row topRow">
            <div class="col-sm-8">
                <div class="row">
                    <div class="col-xs-12">
                        <form:form action="events.io" method="post" modelAttribute="Events">
                            <div class="form-group">
                                <label for="ID">ID</label>
                                <form:input path="id" cssClass="form-control" id="ID" placeholder="Event ID" disabled="true"/>
                            </div>

                            <label for="date">Date</label><!--outside becus of the input field-->
                            <div class="form-group input-group date" data-provide="datepicker">
                                <form:input path="date"  cssClass="form-control" id="datepicker" placeholder="Date"/>
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-th"></span>
                                </div>
                                <form:errors path="date"/>
                            </div>

                            <div class="form-group">
                                <label for="title">Title</label>
                                <form:input path="title"  cssClass="form-control" id="title" placeholder="Title"/>
                                <form:errors path="title"/>
                            </div>

                            <div class="form-group">
                                <label for="description">Description</label>
                                <form:input path="description" cssClass="form-control" id="description" placeholder="Description"/>
                                <form:errors path="description"/>
                            </div>

                            <div class="form-group">
                                <label for="content">Content</label>
                                <form:textarea path="content" cssClass="form-control" id="content" rows="5" placeholder="Whats doing on?"></form:textarea>
                            </div>

                            <div class="text-center">
                                <div class= col-xs-12><form:button class= "btn btn-success btn-lg">Post</form:button> </div>
                            </div>
                        </form:form>
                    </div>
                </div>
                <hr />
            </div>
            <div class="col-sm-4">
                <div class="row">
                    <div class="col-xs-12">
                        <c:if test="${not empty eventsObject}">
                            <div class="alert alert-dismissable alert-success">
                                <button data-dismiss="alert" class="close" type="button">&times;</button>
                                Event Posted
                                <br />
                            </div>
                        </c:if>
                        <h3 class="no-top-margin">Events</h3>
                        <div class="eventsection">
                            <div class="panel panel-default" id="events-panel">
                                <div class="panel-heading">${allEvent.title}
                                    <button type="button" class="close" data-target="#events-panel" data-dismiss="alert"> <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                                    </button>
                                </div>
                                <div class="panel-body">
                                    <p>${allEvent.date}</p>
                                    <p>${allEvent.description}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>
</body>
</html>
