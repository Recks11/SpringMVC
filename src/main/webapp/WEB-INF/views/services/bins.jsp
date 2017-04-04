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
              <h1><span class="mcc-icon-bins"></span><div>Bins</div></h1>
          </div>
      </div>
  </section>
  <section class="">
      <div class="row row-1 row-3">
          <div class="container text-center">
              <div class="col-md-3 col-sm-3">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head userserv-head text-center">
                          <a href="<spring:url value="/services/bins/newBin"/> ">
                              <div class="inPanel">
                                  <span class="mcc-icon-bins"></span>
                                  <div>Get New Bin</div>
                              </div>
                          </a>
                      </div>
                  </div>
              </div>
              <div class="col-md-3 col-sm-3">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head userserv-head text-center">
                          <a href="<spring:url value="/services/bins/collectBin"/>">
                              <div class="inPanel">
                                  <span class="mcc-icon-calendar"></span>
                                  <div class="spec-cas">Bin Collection Days</div>
                              </div>
                          </a>
                      </div>
                  </div>
              </div>
              <div class="col-md-3 col-sm-3">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head userserv-head text-center">
                          <a href="<spring:url value="/services/bins/getrid"/>">
                              <div class="inPanel">
                                  <span class="mcc-icon-bins"></span>
                                  <div class="spec-cas">Get Rid Of Item</div>
                              </div>
                          </a>
                      </div>
                  </div>
              </div>
              <div class="col-md-3 col-sm-3">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head userserv-head text-center">
                          <a href="<spring:url value="/services/bins/replaceBin"/>">
                              <div class="inPanel">
                                  <span class="mcc-icon-bins"></span>
                                  <div class="spec-cas">Replace Bin</div>
                              </div>
                          </a>
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
