<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-US">
  <head>
    <title>E-gov</title>
      <jsp:include page="../fragments/imports.jsp" />
      <script src="<spring:url value="/resources/js/custom.js"/>"></script>
  </head>
  <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
  <!-- Banner and Navbar -->
  <section id="banner" class="banner">
      <div class="bg-color">
              <jsp:include page="../fragments/navbar-services.jsp"/>
          <div class="container" style="width: 750px;">
              <div class="row">
                  <div class="middle">
                      <div class="banner-logo text-center">
                          <img class="img" src="<spring:url value="/resources/images/amuwo_logo.png"/>" />
                      </div>
                      <div class="innertext text-center">
                          <h1> WELCOME TO AMUWO-ODOFIN</h1>
                          <p>Official Web Portal</p>
                      </div>
                  </div>
              </div>
          </div>
      </div>

  </section>

  <!-- Welcome Section-->
  <section id="welcome" class="padsection">
      <div class="wel-head"> <h2 class="text-center">WELCOME ADDRESS</h2> </div>
      <div class="wel-info text-center">
          <p>You are welcome to Amuwo Odofin Local Government.
              The Local Government is located at the Lagos West Senatorial district with a
              vast land and a great population.</p>
          <p>It has a lot of Tourist Centres and it's favorable for Economic growth.
              The Administration has a 20 point agenda that is drawn from the 10 point agenda of the Lagos State Governor.</p>
          <p> Below is the List of our agenda</p>
          <p><button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal"> Read More </button></p> <!-- modal button -->
      </div>
      <!-- Modal -->
      <div id="myModal" class="modal fade" role="dialog">
          <div class="modal-dialog">

              <!-- Modal content-->
              <div class="modal-content">
                  <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">WELCOME ADDRESS</h4>
                  </div>
                  <div class="modal-body">
                      <p>You are welcome to Amuwo Odofin Local Government. The Local Government is located at the Lagos West Senatorial district with a vast land and a great population. It has a lot of Tourist Centres and it's favorable for Economic growth.</p>
                      <p>The Administration has a 20 point agenda that is drawn from the 10 point agenda of the Lagos State Governor. Below is the List of our agenda</p>
                      <h3>Our Agenda</h3>
                      <ul>
                          <li> All existing structures and infrastructures in the state of disrepair i.e. roads and drainages will be given immediate attention in the first 3 months of our administration while new roads would be constructed.</li>
                          <li> Education will be given special attention, incentives given to teachers while salaries will be paid promptly.</li>
                          <li> Scholarship and bursary shall be given to deserving residents and indigenes in tertiary institutions.</li>
                          <li>Our administration will provide Free, Qualitative and Functional Primary School Education for residents of Amuwo Odofin Local Government. We shall also embark on the construction of teachers’ quarters in the riverine areas.</li>
                          <li> Free Basic-Primary Health Services will be provided for all while special attention will be given to the Aged and Children.</li>
                          <li> The health centres will be renovated while new ones will be built  and upgraded to modern standard as well as a mobile/boat clinic provided for the riverine communities.</li>
                          <li> Our administration shall put in place a Security Network that will promote peace and tranquility within the Local Government by working in collaboration with the Nigeria Police, Community leaders and other security agencies while new Police posts and equipment coupled with incentives will be given to enhance effectiveness.</li>
                          <li>  Branded Mass Transit Buses, Motor bikes (Okada), Tricycles (Keke NAPEP) and Taxis will be provided in conjunction with private owners to facilitate shuttle services within the Local Government as a whole at reduced cost. To enhance safe transportation at the riverine areas, more modern jetties, ferry boats, Scholar boats and boat clinics will be provided for the usage of our riverine communities.</li>
                          <li>  Agriculture will be given special attention as farmers would be encouraged to produce more while soft loans will be given to farmers who form co-operatives to serve as boost for production of cheaper farm produce while fertilizers, farming implements and fishing nets will be purchased for them at subsidized rate.</li>
                          <li>  Our Commercial Markets will be given special attention, as we shall rehabilitate and sanitize the markets for the improvement of sales and hygiene while new markets will be built at the riverine communities.</li>
                          <li>  We shall make boreholes available for safe portable drinking water in the nooks and crannies of the Local Government especially at the riverine communities while efforts will be made to reactivate the Festac Water Works via the Festac Resident Association, (FTRA), Lagos State Government and the Federal Government.</li>
                          <li>  We shall encourage Co-operative Societies amongst women and various organizations.</li>
                          <li>  We shall encourage Government, Private Sector and Civil Society partnership in our administration as we believe that this will help to improve the socio, political, cultural and economic activities of our communities.</li>
                          <li>  We shall institute a regular quarterly Town Hall Meetings between Stakeholders in the community and our Executive Council to engage in regular téte-à-tête on issues relating to the development of our communities.</li>
                          <li>  Our administration shall establish an I.C.T training and business centre for skills and vocational training.</li>
                          <li>  Our administration shall reinforce the skill acquisition center at Abule Ado to train people in vocational skills and production of materials in some of our social establishments i.e. Furniture for our primary schools, offices et al.</li>
                          <li>  Our administration shall monitor the management of wastes in partnership with local and private waste operators.
                          <li>  Our administration shall establish a Monthly Local Government Newspaper.</li>
                          <li>  We shall look towards the building of a Local Government owned Sporting Complex while we shall make efforts to take over the Federal Housing Authority Football Sporting Complex or run it with FHA.</li>
                          <li>  A musical studio shall be established for talent development.</li>
                          <li>  Youth empowerment and job creation shall be our primary assignment.</li>
                          <li>  Social and Cultural development such as support for social programmes i.e. Talk show, Workshops, Carnivals and other social activities will be strongly encouraged.</li>
                          <li>  Open door policy will be our watch word.</li>
                      </ul>
                      <p>We will achieve most of these projects through networking with stakeholders in the community , some will be outsourced while collaborating with likely partners such as the NGO’s and donor agencies like UNICEF, USAID, ACTION AID , formal and informal sectors ,and several other bodies both in and outside of Nigeria.</p>
                      <p>Our immediate attention will go to road rehabilitation, primary school education development, opening of the drainages, security, street lightings and environmental development in the first 100 days of our administration.</p>
                      <p>We believe that it takes a lot of vision to fulfill our outlined agenda, but our confidence lies not in our own abilities but by the grace of the Almighty God.</p>
                      <p>The Website is an initiative that affords the residents of the Local Government and Nigeria in general to interact with the administration, access information on government policy and programs, and ensuring that government business is done on real time. The website is also expected to serve as a liaison forum for intending visitors who will no longer need to get to the L.G secretariat before they can get information.</p>
                      <p>The 21st Century realities are clearly requiring that the instrumentality of the technology be put into utmost use to maximize potentials and improve productivity.This philosophy is what informs our building of this interactive platform to afford the people the opportunity to participate in the process that should lead to the realization of this administration’s 20 points agenda.</p>
                      <h3>Amuwo - Odofin ati Eko o ni Baje</h3>
                      <!--modal text-->
                  </div>
                  <div class="modal-footer">
                      <button type="button" class="btn btn-success modalclose" data-dismiss="modal">Close</button>
                  </div>
              </div>

          </div>
      </div>
  </section>
  <!--End Modal-->
  <!-- End Welcome Section-->

  <section id="info" class="padsection ">
      <section class="container">
          <div class="row">
              <div class="col-md-8 col-sm-8 sansita">
                  <div class="panel">
                      <div class="panel-heading pan-heading">
                          <h2 class="panel-title">
                              NEWS
                          </h2>
                      </div>
                      <div class="panel-body pan-body">
                          <h4>This is the Heading</h4>
                          <p>
                              Lorem ipsum dolor sit amet,
                              consectetur adipisicing elit,
                              sed do eiusmod tempor incididunt
                              ut labore et dolore magna aliqua...
                          </p>
                          <h4>Also thhe heading</h4>
                          <p>
                              Lorem ipsum dolor sit amet,
                              consectetur adipisicing elit,
                              sed do eiusmod tempor incididunt
                              ut labore et dolore magna aliqua...
                          </p>
                          <h4>yup! another heading</h4>
                          <p>
                              Lorem ipsum dolor sit amet,
                              consectetur adipisicing elit,
                              sed do eiusmod tempor incididunt
                              ut labore et dolore magna aliqua...
                          </p>
                      </div>
                      <div class="panel-footer pan-heading no-pad"><p class="text-center no-bottom-margin">
                          <button class="btn btn-success">More News</button></p>
                      </div>
                  </div>
              </div>
              <div class="col-md-4 col-sm-4 sansita">
                  <div class="panel">
                      <div class="panel-heading pan-heading">
                           <h2 class="panel-title">Events</h2>
                      </div>
                      <div class="panel-body pan-body feed">
                          <core:forEach  items="${events}" var="event">
                          <section class="feed-item">
                              <%--<div class="icon pull-left"><i class="fa fa-arrow-right"></i></div>--%>
                              <div class="text feed-item-body">
                                  <div class="time pull-right">${event.date}</div>
                                  <p class="title">${event.title} </p>
                                  <p class="description">${event.description}</p>
                              </div>
                          </section>
                          </core:forEach>
                      </div>
                      <div class="panel-footer pan-heading no-pad"><p class="text-center no-bottom-margin">
                          <button class="btn btn-success">More Events</button></p>
                      </div>
                  </div>
                   <!--Events should take values from Database and be updated from there-->
              </div>
          </div>
      </section>
  </section>
  <jsp:include page="../fragments/footer-form.jsp"/>
</body>
</html>
