<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 3/10/2017
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../fragments/imports.jsp"/>
    <script src="<spring:url value="/resources/js/custom-serv-reg.js"/>"></script>
</head>
<body>

<table class="table">
    <thead>
    <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${users}" var="user">
    <tr>
        <td>${user.firstName}</td>
        <td>${user.lastName}</td>
        <td>${user.email}</td>
    </tr>
    </c:forEach>
    </tbody>
</table>
    <jsp:include page="../fragments/footer-1.jsp"/>
</body>
</html>
