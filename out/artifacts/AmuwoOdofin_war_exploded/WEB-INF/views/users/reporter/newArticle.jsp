<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 3/16/2017
  Time: 1:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${title.toUpperCase()}</title>
    <jsp:include page="../../../fragments/adminFragments/imports-admin.jsp"/>
</head>
<body>
<jsp:include page="../../../fragments/userFragments/navbar-user.jsp"/>
<div id="wrapper">
    <div class="container custom-width">
        <div class="row">
            <div class="col-xs-12">
                <form:form action="post.io" method="post" modelAttribute="News">
                    <div class="form-group">
                        <label for="headline">Id</label>
                        <form:input path="id" cssClass="form-control" id="headline" placeholder="Id" disabled="true"/>
                    </div>
                    <div class="form-group">
                        <label for="headline">Headline</label>
                        <form:input path="headline" cssClass="form-control" id="headline" placeholder="Headline"/>
                    </div>
                    <div class="form-group">
                        <label for="article">Article</label>
                        <form:textarea path="article" cssClass="form-control" id="article" rows="20" placeholder="Article"/>
                    </div>
                    <div class="text-center">
                        <form:button name="action" class= "btn btn-success btn-lg" value="post"> Post Article </form:button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
