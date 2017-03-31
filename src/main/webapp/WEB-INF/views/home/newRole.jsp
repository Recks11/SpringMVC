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
              <h1><span class="mcc-icon-work"></span><div>New Role</div></h1>
              <p> What do you want to be? </p>
          </div>
      </div>
  </section>
  <section class="">
      <div class="row row-1 row-3">
          <div class="container text-center">
              <c:if test="${not empty RequestExists}">
                  <div> You Already Requested to be a ${requestrole} </div>
              </c:if>
              <div class="col-md-6 col-sm-6">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head userserv-head text-center">
                          <a href="<spring:url value="/newRole/reporter"/>">
                          <div class="inPanel">
                            <span class="mcc-icon-notes"></span>
                            <div>Be A Reporter</div>
                          </div>
                          </a>
                      </div>
                  </div>
              </div>
              <div class="col-md-6 col-sm-6">
                  <div class="panel panel-default serv-panel">
                      <div class="panel-heading serv-head userserv-head text-center">
                          <a href="<spring:url value="/newRole/blog"/>">
                          <div class="inPanel">
                              <span class="mcc-icon-book-stack"></span>
                              <div class="spec-cas">Be A Blogger</div>
                          </div>
                          </a>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>
  <jsp:include page="../fragments/footer-1.jsp"/>
</body>
</html>
