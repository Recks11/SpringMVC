<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Ijiekhuamen Rex
  Date: 3/16/2017
  Time: 1:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <jsp:include page="../../fragments/adminFragments/imports-admin.jsp"/>
</head>
<body>
<jsp:include page="../../fragments/adminFragments/navbar-admin.jsp"/>
<div id="wrapper">
    <div class="container custom-width">
    <div class="row">
        <div class="col-lg-12">
            <h1>Dashboard <small>Statistics and more</small></h1>
            <div class="alert alert-dismissable alert-warning">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Welcome to the admin dashboard!
                <br />
            </div>
        </div>
    </div>
        <!---->
        <div class="row text-center" style="margin-bottom: 30px">
            <div class="col-md-6 no-pad">
                <div class = "col-sm-6">
                    <div class="admin-dashboard-item bg-blue">
                        <p>Total Number Of Users</p>
                        <i class="fa fa-globe admin-icon pull-left"></i>
                        <div class="pull-right admin-number">${number}</div>
                    </div>
                </div>
                <div class = "col-sm-6">
                    <div class="admin-dashboard-item bg-red">
                        <p>Role change requests</p>
                        <i class="fa fa-user admin-icon pull-left"></i>
                        <div class="pull-right admin-number">${numberRequests}</div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 no-pad">
                <div class = "col-sm-6">
                    <div class="admin-dashboard-item bg-green">
                        <p>Bloggers & Reporters</p>
                        <i class="fa fa-user admin-icon pull-left"></i>
                        <div class="pull-right admin-number">${numberBandR}</div>
                    </div>
                </div>
                <div class = "col-sm-6">
                    <div class="admin-dashboard-item bg-white">
                        <p>Number of Registered Organisations</p>
                        <i class="fa fa-user admin-icon pull-left"></i>
                        <div class="pull-right admin-number">999</div>
                    </div>
                </div>
            </div>
        </div>
        <!---->
    <div class="row">
        <div class="col-md-8">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Visits Based on a 10 days data</h3>
                </div>
                <div class="panel-body">
                    <div id="shieldui-chart1"></div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-rss"></i> Feed</h3>
                </div>
                <div class="panel-body feed">
                    <section class="feed-item">
                        <div class="icon pull-left">
                            <i class="fa fa-comment"></i>
                        </div>
                        <div class="feed-item-body">
                            <div class="text">
                                <a href="#">John Doe</a> commented on <a href="#">What Makes Good Code Good</a>.
                            </div>
                            <div class="time pull-left">
                                3 h
                            </div>
                        </div>
                    </section>
                    <section class="feed-item">
                        <div class="icon pull-left">
                            <i class="fa fa-check"></i>
                        </div>
                        <div class="feed-item-body">
                            <div class="text">
                                <a href="#">Merge request #42</a> has been approved by <a href="#">Jessica Lori</a>.
                            </div>
                            <div class="time pull-left">
                                10 h
                            </div>
                        </div>
                    </section>
                    <section class="feed-item">
                        <div class="icon pull-left">
                            <i class="fa fa-plus-square-o"></i>
                        </div>
                        <div class="feed-item-body">
                            <div class="text">
                                New user <a href="#">Greg Wilson</a> registered.
                            </div>
                            <div class="time pull-left">
                                Today
                            </div>
                        </div>
                    </section>
                    <section class="feed-item">
                        <div class="icon pull-left">
                            <i class="fa fa-bolt"></i>
                        </div>
                        <div class="feed-item-body">
                            <div class="text">
                                Server fail level raises above normal. <a href="#">See logs</a> for details.
                            </div>
                            <div class="time pull-left">
                                Yesterday
                            </div>
                        </div>
                    </section>
                    <section class="feed-item">
                        <div class="icon pull-left">
                            <i class="fa fa-archive"></i>
                        </div>
                        <div class="feed-item-body">
                            <div class="text">
                                <a href="#">Database usage report</a> is ready.
                            </div>
                            <div class="time pull-left">
                                Yesterday
                            </div>
                        </div>
                    </section>
                    <section class="feed-item">
                        <div class="icon pull-left">
                            <i class="fa fa-shopping-cart"></i>
                        </div>
                        <div class="feed-item-body">
                            <div class="text">
                                <a href="#">Order #233985</a> needs additional processing.
                            </div>
                            <div class="time pull-left">
                                Wednesday
                            </div>
                        </div>
                    </section>
                    <section class="feed-item">
                        <div class="icon pull-left">
                            <i class="fa fa-arrow-down"></i>
                        </div>
                        <div class="feed-item-body">
                            <div class="text">
                                <a href="#">Load more...</a>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Logins per week</h3>
                </div>
                <div class="panel-body">
                    <div id="shieldui-chart2"></div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-magnet"></i> Server Overview</h3>
                </div>
                <div class="panel-body">
                    <ul class="server-stats">
                        <li>
                            <div class="key pull-right">CPU</div>
                            <div class="stat">
                                <div class="info">60% / 37°C / 3.3 Ghz</div>
                                <div class="progress progress-small">
                                    <div style="width: 70%;" class="progress-bar progress-bar-danger"></div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="key pull-right">Mem</div>
                            <div class="stat">
                                <div class="info">29% / 4GB (16 GB)</div>
                                <div class="progress progress-small">
                                    <div style="width: 29%;" class="progress-bar"></div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="key pull-right">LAN</div>
                            <div class="stat">
                                <div class="info">6 Mb/s <i class="fa fa-caret-down"></i>&nbsp; 3 Mb/s <i class="fa fa-caret-up"></i></div>
                                <div class="progress progress-small">
                                    <div style="width: 48%;" class="progress-bar progress-bar-inverse"></div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
        <div class="col-lg-4">
            <header>
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a data-toggle="tab" href="#stats">Users</a>
                    </li>
                    <li class="">
                        <a data-toggle="tab" href="#report"> Posts </a>
                    </li>
                </ul>
            </header>
            <div class="body tab-content">
                <div class="tab-pane clearfix active" id="stats">
                    <h5 class="tab-header"><i class="fa fa-calendar-o fa-2x"></i> Last logged-in users</h5>
                    <ul class="news-list">
                        <li>
                            <i class="fa fa-user fa-4x pull-left"></i>
                            <div class="news-item-info">
                                <div class="name"><a href="#">Ivan Gorge</a></div>
                                <div class="position">Software Engineer</div>
                                <div class="time">Last logged-in: Mar 12, 11:11</div>
                            </div>
                        </li>
                        <li>
                            <i class="fa fa-user fa-4x pull-left"></i>
                            <div class="news-item-info">
                                <div class="name"><a href="#">Roman Novak</a></div>
                                <div class="position">Product Designer</div>
                                <div class="time">Last logged-in: Mar 12, 19:02</div>
                            </div>
                        </li>
                        <li>
                            <i class="fa fa-user fa-4x pull-left"></i>
                            <div class="news-item-info">
                                <div class="name"><a href="#">Teras Uotul</a></div>
                                <div class="position">Chief Officer</div>
                                <div class="time">Last logged-in: Jun 16, 2:34</div>
                            </div>
                        </li>
                        <li>
                            <i class="fa fa-user fa-4x pull-left"></i>
                            <div class="news-item-info">
                                <div class="name"><a href="#">Deral Ferad</a></div>
                                <div class="position">Financial Assistant</div>
                                <div class="time">Last logged-in: Jun 18, 4:20</div>
                            </div>
                        </li>
                        <li>
                            <i class="fa fa-user fa-4x pull-left"></i>
                            <div class="news-item-info">
                                <div class="name"><a href="#">Konrad Polerd</a></div>
                                <div class="position">Sales Manager</div>
                                <div class="time">Last logged-in: Jun 18, 5:13</div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="tab-pane" id="report">
                    <h5 class="tab-header"><i class="fa fa-star fa-2x"></i> latest posts </h5>
                    <ul class="news-list news-list-no-hover">
                        <li>
                            <i class="fa fa-user fa-4x pull-left"></i>
                            <div class="news-item-info">
                                <div class="name"><a href="#">Pol Johnsson</a></div>
                                <div class="options">
                                    <button class="btn btn-xs btn-success">
                                        <i class="fa fa-phone"></i>
                                        Call
                                    </button>
                                    <button class="btn btn-xs btn-warning">
                                        <i class="fa fa-envelope-o"></i>
                                        Message
                                    </button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <i class="fa fa-user fa-4x pull-left"></i>
                            <div class="news-item-info">
                                <div class="name"><a href="#">Terry Garel</a></div>
                                <div class="options">
                                    <button class="btn btn-xs btn-success">
                                        <i class="fa fa-phone"></i>
                                        Call
                                    </button>
                                    <button class="btn btn-xs btn-warning">
                                        <i class="fa fa-envelope-o"></i>
                                        Message
                                    </button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <i class="fa fa-user fa-4x pull-left"></i>
                            <div class="news-item-info">
                                <div class="name"><a href="#">Eruos Forkal</a></div>
                                <div class="options">
                                    <button class="btn btn-xs btn-success">
                                        <i class="fa fa-phone"></i>
                                        Call
                                    </button>
                                    <button class="btn btn-xs btn-warning">
                                        <i class="fa fa-envelope-o"></i>
                                        Message
                                    </button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <i class="fa fa-user fa-4x pull-left"></i>
                            <div class="news-item-info">
                                <div class="name"><a href="#">Remus Reier</a></div>
                                <div class="options">
                                    <button class="btn btn-xs btn-success">
                                        <i class="fa fa-phone"></i>
                                        Call
                                    </button>
                                    <button class="btn btn-xs btn-warning">
                                        <i class="fa fa-envelope-o"></i>
                                        Message
                                    </button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <i class="fa fa-user fa-4x pull-left"></i>
                            <div class="news-item-info">
                                <div class="name"><a href="#">Lover Lund</a></div>
                                <div class="options">
                                    <button class="btn btn-xs btn-success">
                                        <i class="fa fa-phone"></i>
                                        Call
                                    </button>
                                    <button class="btn btn-xs btn-warning">
                                        <i class="fa fa-envelope-o"></i>
                                        Message
                                    </button>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    </div>
</div>
<script src=""></script>
</body>
</html>
