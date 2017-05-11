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
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags" %>
<html lang=>
<head>
    <title>E-gov</title>
    <jsp:include page="../../fragments/imports.jsp" />
    <script src="<spring:url value="/resources/js/custom-serv-reg.js"/>"></script>
</head>
<body id="myPage" class="about">

<jsp:useBean id="school" scope="request"
             type="org.springframework.beans.support.PagedListHolder" />
<c:url value="/schools/findSchools" var="pagedLink">
    <c:param name="page" value="~"/>
</c:url>



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
            <c:choose>
                <c:when test="${empty school.pageList}">
                    <h1>No Schools</h1>
                </c:when>
            <c:otherwise>
                <h1>${school.pageList.size()} Schools</h1>
                <c:forEach items="${school.pageList}" var="schools">
                <div class="row">
                    <div class="col-sm-3 image-responsive">
                        <img src="<c:url value="/resources/images/schools/${schools.id}.png"/> " width="100%" height="auto" class="service-Image"/>
                    </div>
                    <div class="col-sm-9  image-body">
                        <p>Name: ${schools.name}</p>
                        <p>Address: <br/>${schools.address.housenumber},<br/> ${schools.address.city}, <br/>${schools.address.streetName}</p>

                        <p>Phone Number: ${schools.number}</p>
                        <p>email-address: ${schools.emailAddress}</p>
                        <p>Website: <c:url value="${schools.website}"/> </p>
                    </div>
                </div>
                </c:forEach>
            <tg:pagination pagedList="${school}" pagedLink="${pagedLink}"/>
            </c:otherwise>
            </c:choose>
        </div>

    </div>
</section>
<jsp:include page="../../fragments/footer-1.jsp"/>
</body>
</html>

