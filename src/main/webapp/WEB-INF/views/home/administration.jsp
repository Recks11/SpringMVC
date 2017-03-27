<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 3/27/2017
  Time: 12:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>E-Gov Administration</title>
    <jsp:include page="../fragments/imports.jsp"/>
    <script src="<spring:url value="/resources/js/custom-serv-reg.js"/>"></script>
</head>
<body>
<section class="sec1">
    <jsp:include page="../fragments/navbar-services.jsp"/>
    <div class="jumbotron service-head">
        <div class="container service-inner">
            <h1><span class="mcc-icon-council-and-democracy"></span><div>ADMINISTRATION</div></h1>
            <p> Department </p>
        </div>
    </div>
</section>

<section>
    <div class="container">
        <div class="row text-center" style="margin-bottom: 50px">
            <div class="col-md-4">
            </div>
            <div class="col-md-4" style="margin: 0 auto;">
                <div class = "image-box">
                    <img src="images/1.jpg" class="imag-responsive" alt="Administration - IMAGE" width="100%" height="auto">
                    <div class="roles text-center">
                        <p>IJIEKHUAMEN REX</p>
                        <p> C.E.O</p>
                        <p>09092198416</p>
                        <p>rexijie@gmail.com</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <c:forEach items="${administration}" var="admin">
            <div class="col-md-3 top-pad">
                <div class = "image-box">
                    <img src="images/2.jpg" class="imag-responsive" alt="Administration" width="100%" height="auto">
                    <div class="roles text-center">
                        <p>${admin.name}</p>
                        <p> ${admin.designation}</p>
                        <p>${admin.email}</p>
                        <p>${admin.phoneNumber}</p>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</section>
<jsp:include page="../fragments/footer-1.jsp"/>
</body>
</html>
