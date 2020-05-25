<%--
  Created by IntelliJ IDEA.
  User: xiaoy_000
  Date: 2017/7/1
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from condorthemes.com/cleanzone/charts.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:37:32 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../images/favicon.png">

    <title>NBIOT - 主页</title>

    <!-- Bootstrap core CSS -->
    <link href="../js/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../js/jquery.gritter/css/jquery.gritter.css" />

    <link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../js/html5shiv.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="../js/jquery.nanoscroller/nanoscroller.css" />
    <link rel="stylesheet" type="text/css" href="../js/jquery.easypiechart/jquery.easy-pie-chart.css" />
    <link rel="stylesheet" type="text/css" href="../js/bootstrap.switch/bootstrap-switch.css" />
    <link rel="stylesheet" type="text/css" href="../js/bootstrap.datetimepicker/css/bootstrap-datetimepicker.min.css" />
    <link rel="stylesheet" type="text/css" href="../js/jquery.select2/select2.css" />
    <link rel="stylesheet" type="text/css" href="../js/bootstrap.slider/css/slider.css" />
    <!-- Custom styles for this template -->
    <link href="../css/style.css" rel="stylesheet" />

</head>

<body>

<jsp:include page="/WEB-INF/include/info.jsp" flush="true" />

<div id="cl-wrapper">
    <div class="cl-sidebar">
        <div class="cl-toggle"><i class="fa fa-bars"></i></div>
        <div class="cl-navblock">
            <div class="menu-space">
                <div class="content">
                    <div class="side-user">
                        <div class="avatar"><img src="../images/avatar1_50.jpg" alt="Avatar" /></div>
                        <div class="info">
                            <a href="#">
                                <%
                                    String u=session.getAttribute("name").toString();
                                %>
                                <%out.print(u); %>
                            </a>
                            <img src="../images/state_online.png" alt="Status" /> <span>Online</span>
                        </div>
                    </div>
                    <jsp:include page="/WEB-INF/include/menu.jsp" flush="true" />
                </div>
            </div>
            <div class="text-right collapse-button" style="padding:7px 9px;">
                <button id="sidebar-collapse" class="btn btn-default" style=""><i style="color:#fff;" class="fa fa-angle-left"></i></button>
            </div>
        </div>
    </div>

    <div class="container-fluid" id="pcont">
        <div class="page-head">
            <h2>主页</h2>
            <ol class="breadcrumb">
                <li><a href="#">主页</a></li>
                <%--<li class="active">主页</li>--%>
            </ol>
        </div>
        <div class="cl-mcont">

            <%--<div class="row dash-cols">--%>
                <%--<div class="col-sm-6 col-md-6">--%>
                    <%--<div class="block">--%>
                        <%--<div class="header">--%>
                            <%--<h2>我的设备 <span class="pull-right"></span></h2>--%>
                            <%--<h3></h3>--%>
                        <%--</div>--%>
                        <%--<div class="content no-padding ">--%>
                            <%--<ul class="items">--%>
                                <%--<li>--%>
                                    <%--<i class="fa fa-file-text"></i>智能锁 <span class="pull-right value">${count1}</span>--%>
                                    <%--<small>Smart Lock</small>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<i class="fa fa-file-text"></i>智能环境 <span class="pull-right value">${count2}</span>--%>
                                    <%--<small>Smart Environment</small>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<i class="fa fa-file-text"></i>智慧交通 <span class="pull-right value">${count3}</span>--%>
                                    <%--<small>Smart Traffic</small>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                        <%--<div class="total-data bg-blue" >--%>
                            <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
                                <%--<h2>Total <span class="pull-right">${allcount}</span></h2>--%>
                            <%--</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>

                <%--<div class="col-sm-6 col-md-6">--%>
                    <%--<ul class="nav nav-tabs">--%>
                        <%--<li class="active"><a href="#home" data-toggle="tab">智能锁</a></li>--%>
                        <%--<li><a href="#profile" data-toggle="tab">智能环境</a></li>--%>
                        <%--<li><a href="#messages" data-toggle="tab">智慧交通</a></li>--%>
                    <%--</ul>--%>
                    <%--<div class="tab-content">--%>
                        <%--<div class="tab-pane active cont" id="home">--%>
                            <%--<h2 class="hthin">智能锁</h2>--%>
                            <%--<p>NB-IoT物联网智能锁具备覆盖广、容量大、耗电低的三大特点:首先，NB-IoT信号比较强，即使在地下停车场，也能顺利开锁不会没有信号。此外NB-IoT的电池容量很大，从生产到报销的整个过程，中间不需要轮换电池。以后我们不管在何时何地都可以轻松解锁，我们与锁之间可以建立长久的连接，保证连接的可靠性。每一个智能锁所在的地方，就是一个智能链接产生的点，就是智能信息制造的源点，更是数据接收的入口</p>--%>
                            <%--<p>“物联网智能锁”是基于4G蜂窝网络的窄带物联网技术，能够运用到生产和生活的各个领域</p>--%>
                        <%--</div>--%>
                        <%--<div class="tab-pane cont" id="profile">--%>
                            <%--<h2 class="hthin">智能环境</h2>--%>
                            <%--<p>物联网环境监测系统可广泛应用于农业、园艺、畜牧业等领域，在需要特殊环境要求的场所实施监控和管理，为实现对生态作物的健康成长和及时调整栽培、管理等措施提供及时的科学的依据，同时实现监管自动化。</p>--%>
                        <%--</div>--%>
                        <%--<div class="tab-pane" id="messages">--%>
                            <%--<h2 class="hthin">智慧交通</h2>--%>
                            <%--<p>智慧停车是指将无线通信技术、移动终端技术、GPS定位技术、GIS技术等综合应用于城市停车位的采集、管理、查询、预订与导航服务，实现停车位资源的是实时更新、查询、预订与导航服务一体化，实现停车位资源利用率的最大化、停车场利润的最大化和车主停车服务的最优化。</p>--%>
                            <%--<p>智慧停车的“智慧”就体现在：“智能找车位+自动缴停车费”。</p>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>

        </div>
    </div>

</div>

<script src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/jquery.nanoscroller/jquery.nanoscroller.js"></script>
<script type="text/javascript" src="../js/jquery.sparkline/jquery.sparkline.min.js"></script>
<script type="text/javascript" src="../js/jquery.easypiechart/jquery.easy-pie-chart.js"></script>
<script type="text/javascript" src="../js/behaviour/general1.js"></script>
<script src="../js/jquery.ui/jquery-ui.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/jquery.nestable/jquery.nestable.js"></script>
<script type="text/javascript" src="../js/bootstrap.switch/bootstrap-switch.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="../js/jquery.select2/select2.min.js" type="text/javascript"></script>
<script src="../js/bootstrap.slider/js/bootstrap-slider.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/jquery.gritter/js/jquery.gritter.js"></script>

<script type="text/javascript">
    $(document).ready(function(){
        //initialize the javascript
        App.init();
        App.dashBoard();
        // App.charts();
    });
</script>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/behaviour/voice-commands.js"></script>
<script src="../js/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery.flot/jquery.flot.js"></script>
<script type="text/javascript" src="../js/jquery.flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="../js/jquery.flot/jquery.flot.resize.js"></script>
<script type="text/javascript" src="../js/jquery.flot/jquery.flot.labels.js"></script>
</body>

<!-- Mirrored from condorthemes.com/cleanzone/charts.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:37:32 GMT -->
</html>
