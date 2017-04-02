<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
              <h1><span class="fa fa-user"></span><div>Bloggers</div></h1>
              <p> Be Creative </p>
          </div>
      </div>
  </section>
  <section class="">
      <div class="row row-1 row-3">
          <div class="container">
              <div class="col-md-4 col-sm-4">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head text-center"><span class="mcc-icon-house-search"></span><div>HOTELS</div></div>
                      <div class="panel-body serv-body">Panel Content</div>
                  </div>
              </div>
              <div class="col-md-4 col-sm-4">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head text-center"><span class="mcc-icon-health-and-wellbeing"></span><div class="spec-cas">MEDICAL CARE</div></div>
                      <div class="panel-body serv-body">Panel Content</div>
                  </div>
              </div>
              <div class="col-md-4 col-sm-4">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head text-center"><span class="mcc-icon-leisure"></span><div>LEISURE</div></div>
                      <div class="panel-body serv-body">Panel Content</div>
                  </div>
              </div>
          </div>
      </div>
  </section>
  <jsp:include page="../../fragments/footer-form.jsp"/>
</body>
</html>
