<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang=>
<head>
    <title>E-gov</title>
    <jsp:include page="../fragments/imports.jsp" />
    <script src="<spring:url value="/resources/js/custom-serv-reg.js"/>"></script>
</head>
<body id="myPage" class="about">
<section class="sec1">
    <jsp:include page="../fragments/navbar-services.jsp"/>
    <div class="jumbotron service-head">
        <div class="container service-inner">
            <h1><span class="mcc-icon-council-and-democracy"></span><div>ADMINISTRATION</div></h1>
            <p> Our Administration </p>
        </div>
    </div>
</section>
<section id="administrationSection" class="">
    <div class="row">
        <div class="container">
            <h2>Horizontal form</h2>
            <form:form action="crud.io" method="post" cssClass="form-horizontal" modelAttribute="administration">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Administrator Id:</label>
                    <div class="col-sm-10">
                        <form:input path="administratorId" cssClass="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="name">Name:</label>
                    <div class="col-sm-10">
                        <form:input path="name" cssClass="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="designation">Designation:</label>
                    <div class="col-sm-10">
                        <form:input path="designation" cssClass="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="phoneNumber">Phone Number:</label>
                    <div class="col-sm-10">
                        <form:input path="phoneNumber" cssClass="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">E-Mail Address:</label>
                    <div class="col-sm-10">
                        <form:input path="email" cssClass="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" name="action" class="btn btn-success" value="add">Add</button>
                        <button type="submit" name="action" class="btn btn-primary" value="edit">Edit</button>
                        <button type="submit" name="action" class="btn btn-danger" value="delete">Delete</button>
                        <button type="submit" name="action" class="btn btn-default" value="search">Search</button>
                    </div>
                </div>
            </form:form>

            <h3>FIND PEOPLE</h3>
            <div class="tableOverflow">
            <table class="table">
                <thead>
                <tr>
                    <th>NO</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Designation</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${administrationList}" var="list">
                <tr>
                    <td>${administrationList.indexOf(list)+1}</td>
                    <td>${list.administratorId}</td>
                    <td>${list.name}</td>
                    <td>${list.designation}</td>
                    <td>${list.phoneNumber}</td>
                    <td>${list.email}</td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
            </div>
        </div>
    </div>
</section>

</body>
</html>