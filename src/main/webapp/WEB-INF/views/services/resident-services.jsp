<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="EN-us">
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
          <h1><span class="mcc-icon-house"></span><div>RESIDENTS</div></h1>
          <p> Access Residential Services </p>
      </div>
  </div>
  </section>

  <section class="">
      <div class="row row-1">
          <div class="container">
              <div class="col-md-4 col-sm-4">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head text-center"><span class="mcc-icon-maths-tools"></span><div>SCHOOLS</div></div>
                      <div class="panel-body serv-body">
                          <ul>
                              <li><a href="<spring:url value="/schools/resumptionDates"/>">School resumption Dates</a></li>
                              <li><a href="<spring:url value="/schools/findSchools"/> ">Find a School</a></li>
                              <li><a href="<spring:url value="/schools/findDaycare"/>">Find a Daycare</a></li>
                          </ul>
                      </div>
                  </div>
              </div>
              <div class="col-md-4 col-sm-4">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head text-center"><span class="mcc-icon-business"></span><div>JOBS</div></div>
                      <div class="panel-body serv-body">
                          <ul>
                              <li><a href="<spring:url value="/services/jobs/"/> ">Vacancies</a></li>
                              <li><a href="<spring:url value="/services/jobs/volunteer"/>">Volunteer</a></li>
                              <li><a href="<spring:url value="/services/jobs/internships"/>">Internships</a></li>
                          </ul>
                      </div>
                  </div>
              </div>
              <div class="col-md-4 col-sm-4">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head text-center"><span class="mcc-icon-money"></span><div>PAYMENTS</div></div>
                      <div class="panel-body serv-body">
                          <ul>
                              <li><a href="#">Pay Tax</a></li>
                              <li><a href="#">Pay Council House Rent</a></li>
                              <li><a href="#">Pay Fines</a></li>
                          </ul>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      <div class="row row-2">
          <div class="container">
              <div class="col-md-4 col-sm-4">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head text-center"><span class="mcc-icon-people-and-communities"></span><div class="">MY ENVIRONMENT</div></div>
                      <div class="panel-body serv-body">
                          <ul>
                              <li><a href="<spring:url value="/services/reports/all"/>">Report Damages</a></li>
                              <li><a href="<spring:url value="/services/reports/all"/>">Report Misconduct</a></li>
                              <li><a href="<spring:url value="/services/reports/all"/>">Report Noise Pollution</a></li>
                              <li><a href="<spring:url value="/services/reports/all"/>">Report Other</a></li>
                          </ul>
                      </div>
                  </div>
              </div>
              <div class="col-md-4 col-sm-4">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head text-center"><span class="mcc-icon-bin-wagon"></span><div class="">BINS</div></div>
                      <div class="panel-body serv-body">
                          <ul>
                              <li><a href="<spring:url value="/services/bins/"/>">Get new bin</a></li>
                              <li><a href="<spring:url value="/services/bins/"/>">Bin Collection Days</a></li>
                              <li><a href="<spring:url value="/services/bins/"/>">Get rid of an item</a></li>
                              <li><a href="<spring:url value="/services/bins/"/>">Replace bin</a></li>
                          </ul>
                      </div>
                  </div>
              </div>
              <div class="col-md-4 col-sm-4">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head text-center"><span class="mcc-icon-leisure"></span><div>LEISURE</div></div>
                      <div class="panel-body serv-body">
                          <ul>
                              <li><a href="<spring:url value="/services/leisure/all"/>">Gyms</a></li>
                              <li><a href="<spring:url value="/services/leisure/all"/>">Parks & Pools</a></li>
                              <li><a href="<spring:url value="/services/leisure/all"/>">Sport Centers</a></li>
                              <li><a href="<spring:url value="/services/leisure/all"/>">Fitness</a></li>
                          </ul>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      <div class="row row-3">
          <div class="container">
              <div class="col-md-4 col-sm-4">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head text-center"><span class="mcc-icon-health-and-wellbeing"></span><div class="">HEALTH</div></div>
                      <div class="panel-body serv-body">
                          <ul>
                              <li><a href="<spring:url value="/health/viewHospitals"/> ">Find Hospitals</a></li>
                              <li><a href="#">Emergencies</a></li>
                          </ul>
                      </div>
                  </div>
              </div>
              <div class="col-md-4 col-sm-4">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head text-center"><span class="mcc-icon-libraries"></span><div>YOUR COUNCIL</div></div>
                      <div class="panel-body serv-body">
                          <ul>
                              <li><a href="<spring:url value="/council/administration"/>">Administration</a></li>
                              <li><a href="<spring:url value="/council/directory"/>">Directory</a></li>
                          </ul>
                      </div>
                  </div>
              </div>
              <div class="col-md-4 col-sm-4">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head text-center"><span class="mcc-icon-homes-and-property"></span><div class="">HOMES AND PROPERTY</div></div>
                      <div class="panel-body serv-body">
                          <ul>
                              <li><a href="#">Find a Home</a></li>
                              <li><a href="#">Home Safety</a></li>
                          </ul>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      <%--<div class="row row-3">--%>
          <%--<div class="container">--%>
              <%--<div class="col-md-4 col-sm-4">--%>
                  <%--<div class="panel panel-default serv-panel">--%>
                      <%--<div class="panel-heading serv-head text-center"><span class="mcc-icon-licences-and-permits"></span><div class="">LICENSING</div></div>--%>
                      <%--<div class="panel-body serv-body">--%>
                          <%--<ul>--%>
                              <%--<li><a href="#">Get a license</a></li>--%>
                              <%--<li><a href="#">Request Renewal</a></li>--%>
                          <%--</ul>--%>
                      <%--</div>--%>
                  <%--</div>--%>
              <%--</div>--%>
          <%--</div>--%>
      <%--</div>--%>
  </section>
  <jsp:include page="../../fragments/footer-1.jsp"/>
</body>
</html>
