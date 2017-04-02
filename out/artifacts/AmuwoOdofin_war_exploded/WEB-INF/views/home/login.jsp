<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 3/7/2017
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <jsp:include page="../../fragments/imports.jsp"/>
    <link rel="stylesheet" href="<spring:url value="/resources/css/login-form.css"/>" type="text/css" >
</head>
<body class="bod">
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-4 col-md-offset-4 top-pad">

            <div class="account-wall">

                <div class="header"><h1 class="text-center login-title">Admin Log in</h1></div>

                <c:url value="/login" var="login"/>
                <div class="form-body">
                    <img class="profile-img" src="<spring:url value="/resources/images/amuwo_logo.png"/>" alt="Amuwo-odofin"/>

                    <form:form class="form-signin" action="login" method="post" modelAttribute="Logintime">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <form:input path="username" id="username"  type="text" class="form-control" name="username" placeholder="Username" />
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input id="password" type="password" class="form-control" name="password" placeholder="Password" />
                        </div>
                        <input type="submit" value="submit" class="btn btn-md btn-success btn-block"/>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                            <%--Sign in</button>--%>
                        <c:if test="${not empty error}">
                            <div id="status" class="text-center" style="padding-top:5px">
                                    ${error}
                            </div>
                        </c:if>
                            <c:if test="${not empty message}">
                                <div id="status" class="text-center" style="padding-top:5px">
                                    ${message}
                                </div>
                            </c:if>
                        <br>
                        <br>
                        <br>
                    </form:form>
                </div>
            </div>
            <a href="<spring:url value="/register"/>" class="text-center new-account">Create an account </a>
        </div>
    </div>
</div>
</body>
</html>
