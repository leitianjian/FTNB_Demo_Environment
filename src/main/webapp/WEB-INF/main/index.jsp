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

<%--    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css"/>--%>
    <style>
        html, body, #container {
            height: 100%;
            width: 100%;
        }

        .amap-icon img,
        .amap-marker-content img{
            width: 25px;
            height: 34px;
        }

        .marker {
            position: absolute;
            top: -20px;
            right: -118px;
            color: #fff;
            padding: 4px 10px;
            box-shadow: 1px 1px 1px rgba(10, 10, 10, .2);
            white-space: nowrap;
            font-size: 12px;
            font-family: "";
            background-color: #25A5F7;
            border-radius: 3px;
        }

        .input-card{
            width: 18rem;
            z-index: 170;
        }

        .input-card .btn{
            margin-right: .8rem;
        }

        .input-card .btn:last-child{
            margin-right: 0;
        }
    </style>
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
<%--        <div class="page-head">--%>
<%--            <h2>主页</h2>--%>
<%--&lt;%&ndash;            <ol class="breadcrumb">&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;                <li><a href="#">主页</a></li>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;                &lt;%&ndash;<li class="active">主页</li>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;            </ol>&ndash;%&gt;--%>
<%--        </div>--%>
        <div id="container" class="cl-mcont">
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

<script type="text/javascript"
        src="https://webapi.amap.com/maps?v=1.4.15&key=722e80c674abd54411dd85466c646ae1"></script>
<script type="text/javascript">
    var initLatitude = 114.029378;
    var initLongitude = 22.609390;
    var marker, map = new AMap.Map("container", {
        resizeEnable: true,
        center: [initLatitude, initLongitude],
        zoom: 13
    });

    var icon_green = new AMap.Icon({
        size: new AMap.Size(366, 592),    // 图标尺寸
        image: '//raw.githubusercontent.com/leitianjian/pic_lib/master/clipart2953301.png',  // Icon的图像
        //imageOffset: new AMap.Pixel(0, -60),  // 图像相对展示区域的偏移量，适于雪碧图等
        imageSize: new AMap.Size(20, 36)   // 根据所设置的大小拉伸或压缩图片
    });

    var icon_yellow = new AMap.Icon({
        size: new AMap.Size(512, 512),    // 图标尺寸
        image: 'https://raw.githubusercontent.com/leitianjian/pic_lib/master/kisspng-google-maps-computer-icons-hot-pie-pizza-informati-5b3d0d15857a52.6789271215307277015467.png',  // Icon的图像
        //imageOffset: new AMap.Pixel(0, -60),  // 图像相对展示区域的偏移量，适于雪碧图等
        imageSize: new AMap.Size(40, 40)   // 根据所设置的大小拉伸或压缩图片
    });

    addMarkerYellow(initLatitude, initLongitude);
    updateMap();

    function updateMap() {
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/login/toUpdate.do",
            dataType:"json",
            success: function(data){
                // map.clearOverlays();
                for (i = 0; i < data.length; i++){
                    var location = data[i];
                    console.log(location.id, location.time, location.latitude, location.longitude);
                    // console.log(location.latitude);
                    // console.log(parInfo.longitude);
                    addMarker(location.id, location.latitude, location.longitude);
                    // var point = new BMap.Point(parInfo.longitude, parInfo.latitude);
                    // var marker = new BMap.Marker(point);        // 创建标注
                    // map.addOverlay(marker);                     // 将标注添加到地图中
                    // marker.setTitle(parInfo.carPlate);
                    // var text = "<p>车牌号：" + parInfo.carPlate + "</p><p>停车时间：" + parInfo.parkTime;
                    // var infoWindow = new BMap.InfoWindow("<p style='font-size:14px;'>" + text + "</p>");
                    // marker.addEventListener("mouseover", getAttr());
                }
                // function getAttr() {
                //     for (var i = 0; i < data.length; i++) {
                //         if (data[i] == this.getTitle()) {
                //             var text = "<p>车牌号：" + data[i].carPlate + "</p><p>停车时间：" + parInfo.parkTime;
                //             var infoWindow = new BMap.InfoWindow("<p style='font-size:14px;'>" + text + "</p>");
                //         }
                //         alert(jsonMarkers[i].Name);
                //     }
                // }
            }
        })
    }
    window.setInterval(updateMap, 3000);

    // 实例化点标记
    function addMarker(id, latitude, longitude) {
        switch (id){
            case 0:
                addMarkerRed(latitude, longitude);
                break;
            case 1:
                addMarkerBlue(latitude, longitude);
                break;
            case 2:
                addMarkerGreen(latitude, longitude);
                break;
        }
    }

    function addMarkerRed(latitude, longitude) {
        marker = new AMap.Marker({
            icon: "//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-red.png",
            position: [latitude,longitude],
            offset: new AMap.Pixel(-13, -30)
        });
        marker.setMap(map);
    }

    function addMarkerGreen(latitude, longitude) {
        marker = new AMap.Marker({
            icon: icon_green,
            position: [latitude,longitude],
            // offset: new AMap.Pixel(-13, -30)
        });
        marker.setMap(map);
    }

    function addMarkerBlue(latitude, longitude) {
        marker = new AMap.Marker({
            // icon: "//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-blue.png",
            position: [latitude,longitude],
            offset: new AMap.Pixel(-13, -30)
        });
        marker.setMap(map);
    }

    function addMarkerYellow(latitude, longitude) {
        marker = new AMap.Marker({
            icon: icon_yellow,
            position: [latitude,longitude],
            offset: new AMap.Pixel(-13, -30)
        });
        marker.setMap(map);
    }

    function updateContent() {

        if (!marker) {
            return;
        }

        // 自定义点标记内容
        var markerContent = document.createElement("div");

        // 点标记中的图标
        var markerImg = document.createElement("img");
        markerImg.className = "markerlnglat";
        markerImg.src = "//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-red.png";
        markerContent.appendChild(markerImg);

        // 点标记中的文本
        var markerSpan = document.createElement("span");
        markerSpan.className = 'marker';
        markerSpan.innerHTML = "Hi，我被更新啦！";
        markerContent.appendChild(markerSpan);

        marker.setContent(markerContent); //更新点标记内容
        marker.setPosition([116.391467, 39.927761]); //更新点标记位置
    }

    // 清除 marker
    function clearMarker() {

        if (marker) {
            marker.setMap(null);
            marker = null;
        }
    }
</script>
</body>

<!-- Mirrored from condorthemes.com/cleanzone/charts.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:37:32 GMT -->
</html>
