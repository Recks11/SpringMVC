<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 3/25/2017
  Time: 12:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>E-Gov Register</title>
    <jsp:include page="../../fragments/imports.jsp" />
    <script src="<spring:url value="/resources/js/custom-serv-reg.js"/>"></script>
</head>
<body>
<section class="sec1">
    <jsp:include page="../../fragments/navbar-services.jsp"/>
    <div class="jumbotron service-head">
        <div class="container service-inner">
            <h1><span class="mcc-icon-people-and-communities"></span></h1>
            <h1>New User</h1>
            <p>please fill the form below to register!</p>
        </div>
    </div>
</section>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Personal Details</h1>
            <div class="row">
                <c:url value="job.io" var="up"/>
                <div class="col-lg-12">
                    <form:form cssStyle="margin-bottom: 80px;"
                               action="${up}"
                               method="post" modelAttribute="job"
                    >
                        <div class="form-group">
                            <label for="name">Available Role:</label>
                            <form:input path="role" type="text" cssClass="form-control" id="name" placeholder="Name"/>
                        </div>
                        <div class="form-group">
                            <label for="email">Starting salary:</label>
                            <form:input path="startingSalary" type="number" cssClass="form-control" id="email" placeholder="salary"/>
                        </div>

                        <!--Button-->
                        <button type="submit" class="btn btn-default">Submit</button>
                        <button type="reset" class="btn btn-danger">Clear</button>
                    </form:form>
                </div>
            </div>
        </div>
    </div><!--/.row-->
</div>

</body>
</html>
