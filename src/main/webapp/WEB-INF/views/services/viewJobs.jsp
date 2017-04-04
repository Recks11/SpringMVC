<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang=>
  <head>
    <title>E-gov</title>
      <jsp:include page="../../fragments/imports.jsp" />
      <script src="<spring:url value="/resources/js/custom-serv-reg.js"/>"></script>
  </head>
  <body id="myPage" class="about">
  <section class="sec1">
  <jsp:include page="../../fragments/navbar-services.jsp"/>
      <div class="jumbotron service-head">
          <div class="container service-inner">
              <h1><span class="mcc-icon-work"></span><div>New Role</div></h1>
              <p> What do you want to be? </p>
          </div>
      </div>
  </section>
  <section class="">
      <div class="row row-1 row-3">
          <div class="container text-center">
              <div class="container">
                  <ul class="nav nav-tabs">
                      <li class="active"><a data-toggle="tab" href="#menu0"><i class="fa fa-image"></i></a></li>
                      <li><a data-toggle="tab" href="#menu1"><i class="fa fa-table"></i></a></li>
                  </ul>

                  <div class="tab-content">
                      <div id="menu0" class="tab-pane fade in active">
                          <h1>Vacancies</h1>
                          <div class="row row-1">
                              <c:forEach items="${Jobs}" var="schools">
                                  <div class="row">
                                      <div class="col-sm-3 image-responsive">
                                          <img src="<c:url value="/resources/images/schools/${schools.id}.png"/> " width="100%" height="auto" class="service-Image"/>
                                      </div>
                                      <div class="col-sm-9  image-body">
                                          <p>Name: ${schools.organisation.organisationName}</p>
                                          <p>Address: <br/>${schools.organisation.address.housenumber}, <br/>${schools.organisation.address.streetName}, <br/> ${schools.organisation.address.city}</p>

                                          <p>Phone Number: ${schools.organisation.contact}</p>
                                          <p>email-address: ${schools.organisation.emailAddress}</p>
                                          <p>Role: ${schools.role}</p>
                                          <p>Role: ${schools.startingSalary}</p>
                                      </div>
                                  </div>
                              </c:forEach>
                          </div>
                      </div>

                      <div id="menu1" class="tab-pane fade in active">
                          <h1>School Resumption Dates</h1>
                          <div class="table-responsive">
                              <table class="table table-bordered table-striped">
                                  <thead>
                                  <tr>
                                      <th>Organisation Name</th>
                                      <th>Location</th>
                                      <th>Phone Number</th>
                                      <th>Role</th>
                                      <th>Starting Salary</th>
                                  </tr>
                                  </thead>
                                  <tbody>
                                  <tr>
                                      <c:forEach items="${Jobs}" var="jobs">
                                      <td>${jobs.organisation.organisationName}</td>
                                      <td>${jobs.organisation.address.housenumber} ${jobs.organisation.address.streetName} ${jobs.organisation.address.city}</td>
                                      <td>${jobs.organisation.contact}</td>
                                      <td>${jobs.role}</td>
                                      <td>N ${jobs.startingSalary}</td>
                                      </c:forEach>
                                  </tr>
                                  </tbody>
                              </table>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>
  <jsp:include page="../../fragments/footer-1.jsp"/>
</body>
</html>
