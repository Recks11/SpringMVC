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
    <title>${userAccess.toUpperCase()}</title>
    <jsp:include page="../admin/adminFragments/imports-admin.jsp"/>
</head>
<body>
<jsp:include page="../fragments/userFragments/navbar-user.jsp"/>
<div id="wrapper">
    <div class="container custom-width">
    <div class="row">
        <div class="col-lg-12">
            <h1>${messageForUser} <small>Statistics and more</small></h1>
            <div class="alert alert-dismissable alert-warning">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Welcome to the admin dashboard! Feel free to review all pages and modify the layout to your needs.
                <br />
                This theme uses the <a href="https://www.shieldui.com">ShieldUI</a> JavaScript library for the
                additional data visualization and presentation functionality illustrated here.
            </div>
        </div>
    </div>
    </div>
</div>
</body>
</html>
