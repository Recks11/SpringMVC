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
            <h1><span class="mcc-icon-leisure"></span><div>LEISURE</div></h1>
            <p>  </p>
        </div>
    </div>
</section>
<section class="">
    <div class="row row-1 row-3">
        <div class="container">

            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#menu0">Gyms</a></li>
                <li><a data-toggle="tab" href="#menu1">Parks</a></li>
                <li><a data-toggle="tab" href="#menu2">Sport Centers</a></li>
                <li><a data-toggle="tab" href="#menu3">Fitness</a></li>
            </ul>

            <div class="tab-content">
                <div id="menu0" class="tab-pane fade in active">
                    <h1>All Gyms</h1>
                    <c:forEach items="${gym}" var="schools">
                        <div class="row">schools
                            <div class="col-sm-3 image-responsive">
                                <img src="<c:url value="/resources/images/schools/${schools.id}.png"/> " width="100%" height="auto" class="service-Image"/>
                            </div>
                            <div class="col-sm-9  image-body">
                                <p>Name: ${schools.name}</p>
                                <p>Address: <br/>${schools.address.housenumber},<br/> ${schools.address.city}, <br/>${schools.address.streetName}</p>

                                <p>Phone Number: ${schools.number}</p>
                                <p>email-address: ${schools.emailAddress}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div id="menu1" class="tab-pane fade">
                    <h1>Parks</h1>
                    <div class="row row-1">
                        <c:forEach items="${park}" var="schools">
                            <div class="row">schools
                                <div class="col-sm-3 image-responsive">
                                    <img src="<c:url value="/resources/images/schools/${schools.id}.png"/> " width="100%" height="auto" class="service-Image"/>
                                </div>
                                <div class="col-sm-9  image-body">
                                    <p>Name: ${schools.name}</p>
                                    <p>Address: <br/>${schools.address.housenumber},<br/> ${schools.address.city}, <br/>${schools.address.streetName}</p>

                                    <p>Phone Number: ${schools.number}</p>
                                    <p>email-address: ${schools.emailAddress}</p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div id="menu2" class="tab-pane fade">
                    <h1>Sport Centers</h1>
                    <c:forEach items="${sport}" var="schools">
                        <div class="row">schools
                            <div class="col-sm-3 image-responsive">
                                <img src="<c:url value="/resources/images/schools/${schools.id}.png"/> " width="100%" height="auto" class="service-Image"/>
                            </div>
                            <div class="col-sm-9  image-body">
                                <p>Name: ${schools.name}</p>
                                <p>Address: <br/>${schools.address.housenumber},<br/> ${schools.address.city}, <br/>${schools.address.streetName}</p>

                                <p>Phone Number: ${schools.number}</p>
                                <p>email-address: ${schools.emailAddress}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div id="menu3" class="tab-pane fade">
                    <h1>Fitness</h1>
                    <c:forEach items="${fitness}" var="schools">
                        <div class="row">schools
                            <div class="col-sm-3 image-responsive">
                                <img src="<c:url value="/resources/images/schools/${schools.id}.png"/> " width="100%" height="auto" class="service-Image"/>
                            </div>
                            <div class="col-sm-9  image-body">
                                <p>Name: ${schools.name}</p>
                                <p>Address: <br/>${schools.address.housenumber},<br/> ${schools.address.city}, <br/>${schools.address.streetName}</p>

                                <p>Phone Number: ${schools.number}</p>
                                <p>email-address: ${schools.emailAddress}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="../../fragments/footer-1.jsp"/>
</body>
</html>

