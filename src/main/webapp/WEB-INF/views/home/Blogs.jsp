<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 4/2/2017
  Time: 2:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Blogs</title>
    <jsp:include page="../../fragments/imports.jsp"/>
    <script src="<spring:url value="/resources/js/custom.js"/>"></script>
</head>
<body id="myPage" data-spy="scroll" data-target="#myScrollspy" data-offset="60" class="about">
<jsp:include page="../../fragments/navbar.jsp"/>


    <jsp:useBean id="pagedList" scope="request"
        type="org.springframework.beans.support.PagedListHolder" />
<c:url value="/blogs" var="pagedLink">
    <c:param name="page" value="~"/>
</c:url>

<div id="section1">
    <%--pagedList is the name of the bage list holder binded from the blog controller--%>
    <c:forEach items="${pagedList.pageList}" var="blog">
        <h1>${blog.headline}</h1>
        <small>${blog.date}</small>
        <p>${blog.article}</p>
    </c:forEach>
</div>
<tg:pagination pagedList="${pagedList}" pagedLink="${pagedLink}"/>
<div id="section2"></div>


<jsp:include page="../../fragments/footer-1.jsp"/>
</body>
</html>
