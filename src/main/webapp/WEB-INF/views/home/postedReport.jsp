<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 3/14/2017
  Time: 7:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../fragments/imports.jsp"/>
</head>
<body>
<jsp:include page="../fragments/navbar.jsp"/>
<section style="margin-top:50px">
    <div class="container">
        <div class="jumbotron">
            <h1>THANK YOU ${reportName}</h1>
            <p>YOUR REPORT HAS BEEN RECIEVED ON ${report.date}</p>
        </div>
    </div>
</section>



<jsp:include page="../fragments/footer-1.jsp"/>
</body>
</html>
