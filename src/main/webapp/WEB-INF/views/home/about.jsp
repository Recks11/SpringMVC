<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 3/7/2017
  Time: 1:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>About</title>
    <jsp:include page="../../fragments/imports.jsp"/>
    <script src="<spring:url value="/resources/js/custom.js"/>"></script>
</head>
<body id="myPage" data-spy="scroll" data-target="#myScrollspy" data-offset="60" class="about">
<jsp:include page="../../fragments/navbar.jsp"/>
<div class="container cont">
    <div class="row">
        <nav class="col-sm-3 text-center" id="myScrollspy">
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="<spring:url value="#section1"/>">Population</a></li>
                <li><a href="<spring:url value="#section2"/>">History</a></li>
                <li><a href="<spring:url value="#section3"/>">Culture</a></li>
                <li><a href="<spring:url value="#section4"/>">Commerce</a></li>
                <li><a href="<spring:url value="#section5"/>">Community</a></li>
                <li><a href="<spring:url value="#section6"/>">Revenue</a></li>
                <li><a href="<spring:url value="#section7"/>">Sanitation</a></li>
                <li><a href="<spring:url value="#section8"/>">Education</a></li>
            </ul>
        </nav>
        <div class="col-sm-9">
            <div id="section1" class="scrosection">
                <h1>Population And Geographical Area</h1>
                <p>  Amuwo Odofin is one of the 57 Local Government Councils that make up Lagos State ,
                    which was created out of the old Amuwo Odofin Local Government on 27 th October,
                    2003. It covers land mass of 100q.km, divided into two distinct geographical spheres of Upland and Riverine areas.
                    For political expediency, the Local Government is divided into three geo-political zones, that is, the Riverine,
                    the Middle Belt and the Upper Belt. The Riverine area comprises Towns and Villages such as Tomaro, Ilado, Okun Glass,
                    Sankey, Igbo Alejo, Igbologun etc.</p>

                <p>    The middle belt begins with the Local Government boundary adjacent to Apapa Local Government through the Tincan Coconut area,
                    Beach-land Estate.</p>

                <p>   The Upper belt comprises Amuwo Odofin Estate, Raji Rasaki Estate, Amuwo Odofin New Town, Festac Town ,
                    Abule Ado, Trade-fair Complex among others. The Local Government, with a population of over 1,500,000
                    according to the 2006 Census shares its boundaries with Ajeromi and Ifelodun Local Government in the East,
                    Oriade Local Government in the West, the Badagry Creek to the South and Isolo/Igando Local Government to the North. </p>
            </div>
            <div id="section2" class="scrosection">
                <h1>History of a Amuwo Odofin Local Government</h1>
                <p>
                    The indigenous dwellers of Amuwo Local Government are mainly the Aworis. Nonetheless, considering its location as a near border Local Government,
                    International trade has found its root in the area with people of various extractions engaging in various forms of trading activities.</p>

                <p>it must also be stated that the hospitality of the people has also attracted people from other ethnic tribes
                    in Nigeria as well as from neighbouring West African States to the area.</p>

                <p>Another noticeable group is the retired and serving Civil Servants,
                    industrialists and members of the Armed Forces of Nigeria who have taken advantages of the
                    serene atmosphere of the Estates located in the Local Government to reside in the area.</p>
            </div>
            <div id="section3" class="scrosection">
                <h1>Culture and Tradition</h1>
                <p>The culture and tradition of Amuwo cannot be separated from those of the indigenous dwellers of the Aworis.
                    Some of the festivals embraced by the people are Elegba, Oro, Sangbeto and Igunuko festivals.</p>

                <p>The culture reflects an affinity with the Badagry people,
                    since the council area is located within the same State delineated geo-political zone as them.</p>

                <p>The custodians of culture and tradition in the area are the traditional rulers.
                    The Local Government is blessed with highly reputable Obas and Chiefs and Baales.
                    This includes Oba Mobadenle Obalade Oyekan- the Onilado of Ilado/Inagbe Islands and Oba Lateef Olayinka Ado,
                    Fabuwa 1, Alado of Ado Land. </p>
            </div>
            <div id="section4" class="scrosection">
                <h1>Commerce and Industry</h1>
                <p> The Local Government boasts of enterprising people. However,
                    it should be noted that the indigenous are agrarian and engage mostly in fishing and production of crops such as cassava,
                    maize, coconuts and cashew nuts.</p>

                <p>Some parts of the Local Government are zoned as industrial estates by the Lagos State Government.
                    The Local Government is making attempts to construct shopping complexes in collaboration with private entrepreneurs.</p>

                <p> Commercial activities are well grounded in the Local Government area.
                    This is made possible by such factors as adequate security, good roads-network,
                    ready market and a generally conducive atmosphere which is prevalent in the area.</p>

                <p>Amuwo Odofin Industrial Estate</p>

                <p>Trinity Estate</p>

                <p>International Trade Fair Complex</p>

                <h3> The following are some of the business areas which investors would find profitable:</h3>
                <ol type="i">
                    <li>Food Processing</li>
                    <li>Tourism e.g boat rides, hotels, restaurants and membership clubs</li>
                    <li>Manufacturing</li>
                    <li>Printing and Communications</li>
                    <li>Photography</li>
                    <li>Agro Allied Industry</li>
                </ol>
            </div>
            <div id="section5" class="scrosection">
                <h1>Community Development and Youth Empowerment:</h1>
                <p>
                    One channel through which the Local Government has effectively disseminated its development activities to the
                    people is through the Community Development Associations (C.D.As).
                    They serve as the link between the government through the provision of social amenities, security-through organized vigilantes etc.</p>

                <p> There are twenty seven Community Development Associates operating within Amuwo Odofin Local Government Area.
                    The Local Government has also been using the Youth organizations in the Local Government as a veritable tool
                    for development and Youth Empowerment.</p>

                <p>  The Local Government has over the year concentrated on Youth development knowing fully well that they are the leaders of the future.</p>

                <h3> The following activities were embarked upon by the Local Government to encourage Youth Education and Development.</h3>
                <ol type="1">
                    <li>Football competition amongst youth organizations and schools</li>
                    <li>Seminars and workshops on matters affecting youths e.g HIV/AIDS and Drug abuse.</li>
                    <li>Youth Carnivals – Yearly subvention to Youth Organizations within the Local Government area.</li>
                </ol>
            </div>
            <div id="section6" class="scrosection">
                <h1>Revenue Sources</h1>

                    <ol type="1">
                        <li>Government Allocations</li>
                        <li>Internally Generated Revenue (IGR)</li>
                    </ol>
                    <h4>Government Allocations</h4>
                    <ol type="1">
                        <li>Federal Government Allocations</li>
                        <li>State Government Allocations</li>
                    </ol>
                    <h4>Internally Generated Revenue (IGR):</h4>
                    <ol type="1">
                        <li>These can be obtained through:-</li>
                        <li>Advert Permits</li>
                        <li>Trade Permits</li>
                        <li>Loading and Offloading</li>
                        <li>Radio and TV</li>
                        <li>Stacking of building materials</li>
                        <li>Kiosk Permit</li>
                        <li>Lock-up shop fee</li>
                        <li>Liquor</li>
                        <li>Food and Regulation Permit</li>
                        <li>Stall ages</li>
                        <li>Tenement Rate</li>
                        <li>Wares Point</li>
                        <li>Street naming</li>
                        <li>Marriage Registry</li>
                    </ol>

                    <h4>Key Services</h4>
                    <p>The constitutional role of Local Government is the provision of basic infrastructure and
                        services to make life better for the indigenes and residents of the area.
                        In this light, we shall see some key services provided by the Local Government.</p>

            </div>
            <div id="section7" class="scrosection">
                <h1>Environmental Sanitation</h1>
                <p>This service is provided by the Local Government to the residents directly,
                    through the use of council equipment and workers for the cleaning of common areas such as roads and highways
                    during sanitation days (last Saturday of the month) and indirectly by the encouragement of Private sector participation
                    in refuse collection and disposal. The Local Government also engages in the regular mopping up of the presidential routes
                    within the council area.</p>

                <p>   Amuwo is largely cosmopolitan, therefore the challenges of refuses disposal is acute.
                    The Local Government is however tackling this herculean task through daily monitoring of illegal refuse dumps,
                    carting of refuse from public places and adequate public enlightenment programmes aimed at combating bad environment habits.</p>

                <p>    In line with the policy of the current administration on the creation of green areas,
                    our Local Government has commenced the planning of trees and flowers for the beautifications of open spaces,
                    road median and rounds about/road intersections within our territory. </p>
            </div>
            <div id="section8" class="scrosection">
                <h1>Education:</h1>
                <p> The Local Government is saddled with the responsibility of paying the salaries
                    of primary school teachers as well as maintenance of the same schools and its students.</p>

                <p> The Local Government gives priority attention to education and regards it as the
                    greatest legacy it can bequeath to the younger generation; hence the l large sums
                    money budgeted by the Local Government to this sector.</p>

                <p>Apart from the payment of teacher's salaries and allowances, the Local Government
                    also provides an enabling learning environment for the children. Effort is also m
                    ade to encourage the involvement of non-governmental agencies and public spirited
                    individuals to contribute to the development of education in the area.</p>

                <p>To achieve an all round educational growth, the Local Government is giving
                    bursary awards to students in higher institutions. Equally, free exercise
                    books and education support materials are distributed to schools and students
                    from time to time.</p>

                <h4>Statistics of Educational Institutions in Amuwo Odofin Local Government:</h4>
                <ul>
                    <li>12 - Public Primary Schools</li>

                    <li>20 - Private Primary Schools</li>

                    <li>09 - Public Secondary Schools</li>

                    <li>10 - Secondary Schools</li>

                    <li>01 - Government Technical School</li>

                    <li>01 - Vocational Training Center</li>

                    <li>25 - Adult Literacy Centers</li>
                </ul>
                <p></p>
                <h4>Key Benefits</h4>
                <ul>
                    <li>Creating a highly literate society</li>

                    <li>Encouragement of vocational training</li>

                    <li>Encouragement of excellence in education pursuits</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Scrollspy -->
    <%--Replace with Db retrievable data--%>


<jsp:include page="../../fragments/footer-1.jsp"/>
</body>
</html>
