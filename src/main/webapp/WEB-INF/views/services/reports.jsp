<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 4/3/2017
  Time: 7:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang=>
<head>
    <title>E-gov</title>
    <jsp:include page="../../fragments/imports.jsp" />
    <script src="<spring:url value="/resources/js/custom-serv-reg.js"/>"></script>
</head>
<body id="myPage" class="about">
<section class="sec1">
    <jsp:include page="../../fragments/navbar-services.jsp"/>
    <div class="jumbotron service-head">
        <div class="container service-inner">
            <h1><span class="mcc-icon-first-aid"></span><div>Health</div></h1>
            <p> Find the best schools around you! </p>
        </div>
    </div>
</section>
<section class="">
    <div class="row row-1 row-3">
        <div class="container">
            <h1 class="label label-info" style="font-size: medium;"> All reports are anonymous</h1>
            <form:form action="report.io" method="post" modelAttribute="Report">
                <h1>Write A report</h1>

                <div class="form-group" >
                    <label for="reportType"></label>
                    <form:select items="${typesOptions}" path="type" cssClass="form-control selectpicker" id="reportType" name="type">
                    </form:select>
                </div>
                <div class="form-group">
                    <label for="email">Email address</label>
                    <form:input path="emailAddress" type="text" cssClass="form-control" id="email" placeholder="Email"/>
                </div>
                <div class="form-group">
                    <label for="report">whats the issue</label>
                    <form:textarea path="description" id="report" cssClass="form-control" rows="10"></form:textarea>
                </div>
                <button type="submit" class="btn btn-success">Submit</button>
            </form:form>
        </div>
    </div>
</section>
<jsp:include page="../../fragments/footer-1.jsp"/>
</body>
</html>

