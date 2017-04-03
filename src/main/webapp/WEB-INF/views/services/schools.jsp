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
            <div class="container">
                <h1>all schools</h1>
                <c:forEach items="${school}" var="schools">
                <div class="row">
                    <div class="col-sm-5">
                        <img src="images/The_Neighbourhood.png" width="100%" height="auto" class="service-Image"/>
                    </div>
                    <div class="col-sm-6">
                        <p>Name: ${schools.name}</p>
                        <p>Address: ${schools.houseAddress.housenumber}</p>
                        <p>Address: ${schools.houseAddress.streetName}</p>
                        <p>Address: ${schools.houseAddress.city}</p>
                        <p>Phone Number: ${schools.phoneNumber}</p>
                        <p>email-address: ${schools.emailAddress}</p>
                        <p>Website: ${schools.website}</p>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
</section>
<jsp:include page="../../fragments/footer-1.jsp"/>
</body>
</html>

