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
            <h1><span class="mcc-icon-maths-tools"></span><div>Schools</div></h1>
            <p> Find the best schools around you! </p>
        </div>
    </div>
</section>
<section class="">
    <div class="row row-1 row-3">
        <div class="container">
            <div id="menu1" class="tab-pane fade in active">
                <h1>School Resumption Dates</h1>
                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>School Name</th>
                            <th>Resumption Date</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${schoolResume}" var="resume">
                        <tr>
                            <td>${resume.name}</td>
                            <td>${resume.resumptionDate}</td>
                        </tr>
                        </tbody>
                        </c:forEach>
                    </table>
                </div>
        </div>
    </div>
</section>
<jsp:include page="../../fragments/footer-1.jsp"/>
</body>
</html>

