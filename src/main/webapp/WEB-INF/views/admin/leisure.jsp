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

            <div class="col-sm-12">
                <div id="Resident Users" class="row">
                    <h1>Leisure</h1>
                    <div class="row">
                        <c:url value="leisure.io" var="up"/>
                        <div class="col-lg-12">
                            <form:form cssStyle="margin-bottom: 80px;"
                                       action="${up}"
                                       method="post" modelAttribute="leisure"
                                       enctype="multipart/form-data" >
                                <div class="form-group">
                                    <label for="type">Name:</label>
                                    <form:select items="${typesOptions}" path="type" cssClass="form-control" id="type" placeholder="Name"/>
                                </div>
                                <div class="form-group">
                                    <label for="name">Name:</label>
                                    <form:input path="name" type="text" cssClass="form-control" id="name" placeholder="Name"/>
                                </div>
                                <h3 style="margin-top:20px;"> Contact</h3>
                                <div class="form-group">
                                    <label for="email">E-mail:</label>
                                    <form:input path="emailAddress" type="email" cssClass="form-control" id="email" placeholder="E-mail Address"/>
                                </div>
                                <div class="form-group">
                                    <label for="Phone">Contact:</label>
                                    <form:input path="number" type="text" cssClass="form-control" id="Phone" placeholder="Phone Number"/>
                                </div>

                                <h3 style="margin-top:20px;"> Address </h3>
                                <div class="form-group">
                                    <label for="hnumber">House Number:</label>
                                    <form:input path="address.housenumber" type="text" cssClass="form-control" id="hnumber" placeholder="House Number"/>
                                </div>
                                <div class="form-group">
                                    <label for="stname">Street Name:</label>
                                    <form:input path="address.streetName" type="text" cssClass="form-control" id="stname" placeholder="Street name/ Estate name"/>
                                </div>
                                <div class="form-group">
                                    <label for="city">City:</label>
                                    <form:input path="address.city" type="text" class="form:input-large" cssClass="form-control" id="city" placeholder="City"/>
                                </div>
                                <div class="form-group">
                                    <label for="city">Upload image:</label>
                                    <form:input path="image" type="file" id="image"/>
                                    <p class="help-block">upload image to represent</p>
                                </div>
                                <!--Button-->
                                <button type="submit" class="btn btn-default">Submit</button>
                                <button type="reset" class="btn btn-danger">Clear</button>
                            </form:form>
                        </div>
                    </div>
                </div>

            </div>

        </div>


</body>
</html>
