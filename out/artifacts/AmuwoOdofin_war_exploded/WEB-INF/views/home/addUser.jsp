<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                <div class="col-lg-12">
                    <form:form cssStyle="margin-bottom: 80px;" method="post" modelAttribute="User">
                        <div class="form-group">
                            <label for="fname">First Name:</label>
                            <form:input path="firstName" type="text" cssClass="form-control" id="fname" placeholder="First Name"/>
                        </div>
                        <div class="form-group">
                            <label for="lname">last Name:</label>
                            <form:input path="lastName" type="text" cssClass="form-control" id="lname" placeholder="last Name"/>
                        </div>
                        <div class="form-group">
                            <label for="email">E-mail:</label>
                            <form:input path="email" type="email" cssClass="form-control" id="email" placeholder="E-mail Address"/>
                        </div>
                        <div class="form-group">
                            <label for="Phone">Contact:</label>
                            <form:input path="contact" type="text" cssClass="form-control" id="Phone" placeholder="Phone Number"/>
                        </div>
                        <!--set enabled | set is reporter | set isBlogger-->
                        <h1 style="margin-top:50px;"> Address </h1>
                        <div class="form-group">
                            <label for="hnumber">House Number:</label>
                            <form:input path="houseaddress.housenumber" type="text" cssClass="form-control" id="hnumber" placeholder="House Number"/>
                        </div>
                        <div class="form-group">
                            <label for="stname">Street Name:</label>
                            <form:input path="houseaddress.streetName" type="text" cssClass="form-control" id="stname" placeholder="Street name/ Estate name"/>
                        </div>
                        <div class="form-group">
                            <label for="city">City:</label>
                            <form:input path="houseaddress.city" type="text" cssClass="form-control" id="city" placeholder="City"/>
                        </div>
                        <h1 style="margin-top:50px"> Login Details </h1>
                        <div class="form-group">
                            <label for="username">username:</label>
                            <form:input path="username" type="text" cssClass="form-control" id="username" placeholder="username"/>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Password:</label>
                            <form:input path="password" type="password" cssClass="form-control" id="pwd" placeholder="Password"/>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Confirm Password:</label>
                            <input type="password" Class="form-control" id="Cpassword" name="cPassword" placeholder="Confirm password"/>
                        </div>

                        <!--Button-->
                        <form:button type="submit" class="btn btn-default">Submit</form:button>
                        <form:button type="reset" class="btn btn-danger">Clear</form:button>
                    </form:form>
                </div>
            </div>
        </div>
    </div><!--/.row-->
</div>

</body>
</html>
