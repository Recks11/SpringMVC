<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 3/12/2017
  Time: 6:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <jsp:include page="../../fragments/imports.jsp"/>
    <script src="<spring:url value="/resources/js/custom.js"/>"></script>
</head>
<body id="myPage" data-spy="scroll" data-target="#myScrollspy" data-offset="60" class="about">
<jsp:include page="../../fragments/navbar.jsp"/>
<section style="margin-top:50px">
<div class="container">
<div class="jumbotron" style="overflow-x: auto">
    <h1>DARN!! THERE WAS AN ERROR!</h1>
    <p> Request:<br>${request}</p><br>
    <p> Response:<br>${response}</p><br>
    <p> In Handler:<br>${handler}</p><br>
    <p> Error:<br>${exception}</p>
    <p> stack:<br>${stack}</p>
</div>
</div>
</section>

</body>
</html>
