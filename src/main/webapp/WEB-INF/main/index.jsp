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

        html,
        body {
            padding: 0;
            margin: 0;
            height: 100%;
            width: 100%;
        }

        .container {
            height: 100%;
        }

        .btn-group {
            position: absolute;
            bottom: 0;
            right: 0;
        }

        a#heightBtn {
            color: #ddd;
            z-index: 2;
            position: fixed;
            right: 20px;
            top: 20px;
            background: #333;
            padding: 5px 10px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.9);
        }

        a#heightBtn:hover {
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.9);
            cursor: pointer;
            user-select: none;
            color: #fff
        }

        .legend {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: transparent;
            border-radius: 5px;
            /*box-shadow: 0 0 5px rgba(0, 0, 0, 0.9);*/
        }

        .legend ul {
            padding: 5px 20px;
            margin: 0;
            list-style: none;
        }

        .color-item {
            width: 67px;
            height: 20px;
            display: inline-block;
        }

        .label-item {
            color: #333;
            display: inline-block;
            width: 67px;
            text-align: center;
            margin-left: -4px;
            font-size: 14px;
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

<%--<script type="text/javascript"--%>
<%--        src="https://webapi.amap.com/maps?v=1.4.15&key=722e80c674abd54411dd85466c646ae1&plugin=Map3D"></script>--%>
<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.15&key=722e80c674abd54411dd85466c646ae1&plugin=Map3D"></script>
<script src="//webapi.amap.com/loca?v=1.3.0&key=722e80c674abd54411dd85466c646ae1&dev=1"></script>
<script src="//a.amap.com/Loca/static/dist/jquery.min.js"></script>
<script type="text/javascript">
    var centerLatitude = 104.0650;
    var centerLongitude = 30.6570;
    var lat_min = 103.85
    var lat_max = 104.3
    var lat_itvl = 0.028125
    var long_min = 30.3
    var long_max = 31
    var long_itvl = 0.04375
    var topColor = [0, 1, 1, 0.9];
    var topFaceColor = [0, 1, 1, 0.4];
    var bottomColor = [0, 0, 1, 0.9];

    var map = new AMap.Map("container", {
        viewMode: '3D',
        showBuildingBlock: false,
        expandZoomRange: true,
        pitch: 50,
        zooms: [3, 20],
        resizeEnable: true,
        center: [centerLatitude, centerLongitude],
        zoom: 10
    });
    // var object3Dlayer = new AMap.Object3DLayer();
    // map.add(object3Dlayer);
    //
    // //添加一个圆柱体
    // var addRegularPrism = function (center, segment, height, radius) {
    //
    //     var cylinder = new AMap.Object3D.Mesh();
    //     var geometry = cylinder.geometry;
    //     var verticesLength = segment * 2;
    //     var path = []
    //     for (var i = 0; i < segment; i += 1) {
    //         var angle = 2 * Math.PI * i / segment;
    //         var x = center.x + Math.cos(angle) * radius;
    //         var y = center.y + Math.sin(angle) * radius;
    //         path.push([x, y]);
    //         geometry.vertices.push(x, y, 0); //底部顶点
    //         geometry.vertices.push(x, y, -height); //顶部顶点
    //
    //         geometry.vertexColors.push.apply(geometry.vertexColors, bottomColor); //底部颜色
    //         geometry.vertexColors.push.apply(geometry.vertexColors, topColor); //顶部颜色
    //
    //         var bottomIndex = i * 2;
    //         var topIndex = bottomIndex + 1;
    //         var nextBottomIndex = (bottomIndex + 2) % verticesLength;
    //         var nextTopIndex = (bottomIndex + 3) % verticesLength;
    //
    //         geometry.faces.push(bottomIndex, topIndex, nextTopIndex); //侧面三角形1
    //         geometry.faces.push(bottomIndex, nextTopIndex, nextBottomIndex); //侧面三角形2
    //     }
    //
    //     // 构建顶面三角形,为了区分顶面点和侧面点使用不一样的颜色,所以需要独立的顶点
    //     for (var i = 0; i < segment; i += 1) {
    //         geometry.vertices.push.apply(geometry.vertices, geometry.vertices.slice(i * 6 + 3, i * 6 + 6)); //底部顶点
    //         geometry.vertexColors.push.apply(geometry.vertexColors, topFaceColor);
    //     }
    //
    //     var triangles = AMap.GeometryUtil.triangulateShape(path);
    //     var offset = segment * 2;
    //
    //     for (var v = 0; v < triangles.length; v += 3) {
    //         geometry.faces.push(triangles[v] + offset, triangles[v + 2] + offset, triangles[v + 1] + offset);
    //     }
    //
    //     cylinder.transparent = true; // 如果使用了透明颜色，请设置true
    //     object3Dlayer.add(cylinder);
    //     return cylinder;
    // };
    // //addRegularPrism(map.lngLatToGeodeticCoord(map.getCenter()), 3, 800, 500) //三棱柱
    // //addRegularPrism(map.lngLatToGeodeticCoord(new AMap.LngLat(minLat, centerLongitude)),6,1000000 + Math.random() * 400,1000)
    // var cylinderList = new Array(256);
    // for (j = 0; j < 16; j++) {
    //     for (i = 0; i < 16;  i++){
    //         cylinderList.push(addRegularPrism(
    //             map.lngLatToGeodeticCoord(new AMap.LngLat(lat_itvl/2 + lat_min + i * lat_itvl , long_itvl/2 + long_min + j * long_itvl)),
    //             6,
    //             1e4 * 2 + Math.random() * 400,
    //             1e3 * 3))
    //     }
    // }

    function getLocationByID(id) {
        let res_long = long_min + (id / 16) * long_itvl + long_itvl/2
        let res_lat  = lat_min + (id % 16) * lat_itvl + lat_itvl/2
        return [res_lat, res_long]
        // return 5 * 1e4 * demand_normalized
    }
    updateMap()
    function updateMap() {
        <%--$.ajax({--%>
        <%--    type:"get",--%>
        <%--    &lt;%&ndash;url:"${pageContext.request.contextPath}/login/toUpdate.do",&ndash;%&gt;--%>
        <%--    url:'https://a.amap.com/Loca/static/mock/jsdata.csv',--%>
        <%--    // dataType:"json",--%>
        <%--    dataType: "csv",--%>
        //     success: function(data){
        $.get("${pageContext.request.contextPath}/login/toUpdate.do", function(data) {
                var gridLayer;
                var height = 200000;
                var viewMode = '3D';

                initPointAdcode();
                function initPointAdcode() {
                    gridLayer = new Loca.GridLayer({
                        map: map,
                        visible: true,
                        zIndex: 777,
                        //eventSupport: true
                    });

                    gridLayer.setData(data, {
                        type: 'json',
                        lnglat: function (obj) {
                            var result = getLocationByID(obj.value.id)
                            return [result];
                        },
                        value: 'count'
                    });

                    gridLayer.setOptions({
                        unit: 'meter',
                        mode: 'sum',
                        light: {
                            // 环境光
                            ambient: {
                                // 光照颜色
                                color: '#ffffff',
                                // 光照强度，范围 [0, 1]
                                intensity: 0.5
                            },
                            // 平行光
                            directional: {
                                color: '#ffffff',
                                // 光照方向，是指从地面原点起，光指向的方向。
                                // 数组分别表示 X 轴、Y 轴、Z 轴。
                                // 其中 X 正向朝东、Y 正向朝南、Z 正向朝地下。
                                direction: [0, -1, 0.6],
                                intensity: 0.7
                            }
                        },
                        style: {
                            radius: 2000,
                            gap: 1000,
                            height: [0, height],
                            color: {
                                scale: 'quantize',
                                value: ['rgb(255,237,160)', 'rgb(254,217,118)', 'rgb(254,178,76)', 'rgb(253,141,60)', 'rgb(252,78,42)', 'rgb(227,26,28)', 'rgb(189,0,38)', ],
                            }
                        }
                    }).render();
                    gridLayer.setFitView();

                    // 事件 legendupdate: 图例数据更新完成回调此函数
                    <%--gridLayer.on('legendupdate', function (ev) {--%>
                    <%--    var colorLegend = ev.colorLegend;--%>

                    <%--    var legends = colorLegend.map(item => {--%>
                    <%--        // color 为 gradient 传入的格式--%>
                    <%--        return `<li class="color-item" style="background-color: ${item.color}"></li>`--%>
                    <%--    });--%>

                    <%--    var ranges = colorLegend.map((item, index) => {--%>
                    <%--        // range 可能为小数，可以自行取整计算--%>
                    <%--        item.range[0] = Math.round(item.range[0]/10000);--%>
                    <%--        item.range[1] = Math.round(item.range[1]/10000);--%>

                    <%--        if (index == colorLegend.length - 1) {--%>
                    <%--            return `<li class="label-item">${item.range[0]}</li><li class="label-item">${item.range[1]}</li>`;--%>
                    <%--        }--%>
                    <%--        return `<li class="label-item">${item.range[0]}</li>`;--%>
                    <%--    });--%>

                    <%--    // document.getElementById('legend-color').innerHTML = legends.join('');--%>
                    <%--    // document.getElementById('legend-label').innerHTML = ranges.join('');--%>
                    <%--});--%>
                }

                // // 高度切换
                // function onHeight() {
                //     var heightBtn = document.querySelector('#heightBtn');
                //
                //     heightBtn.onclick = function () {
                //         viewMode = viewMode === '2D' ? '3D' : '2D';
                //         heightBtn.innerHTML = viewMode;
                //
                //         gridLayer.setOptions({
                //             style: {
                //                 height: [0, viewMode === '2D' ? 0 : height]
                //             }
                //         }).render();
                //     }
                // }
                // onHeight();
        })
    }

    <%--var icon_green = new AMap.Icon({--%>
    <%--    size: new AMap.Size(366, 592),    // 图标尺寸--%>
    <%--    image: '//raw.githubusercontent.com/leitianjian/pic_lib/master/clipart2953301.png',  // Icon的图像--%>
    <%--    //imageOffset: new AMap.Pixel(0, -60),  // 图像相对展示区域的偏移量，适于雪碧图等--%>
    <%--    imageSize: new AMap.Size(20, 36)   // 根据所设置的大小拉伸或压缩图片--%>
    <%--});--%>

    <%--var icon_yellow = new AMap.Icon({--%>
    <%--    size: new AMap.Size(512, 512),    // 图标尺寸--%>
    <%--    image: 'https://raw.githubusercontent.com/leitianjian/pic_lib/master/kisspng-google-maps-computer-icons-hot-pie-pizza-informati-5b3d0d15857a52.6789271215307277015467.png',  // Icon的图像--%>
    <%--    //imageOffset: new AMap.Pixel(0, -60),  // 图像相对展示区域的偏移量，适于雪碧图等--%>
    <%--    imageSize: new AMap.Size(40, 40)   // 根据所设置的大小拉伸或压缩图片--%>
    <%--});--%>

    <%--addMarkerYellow(initLatitude, initLongitude);--%>
    <%--updateMap();--%>

    <%--function updateMap() {--%>
    <%--    $.ajax({--%>
    <%--        type:"post",--%>
    <%--        url:"${pageContext.request.contextPath}/login/toUpdate.do",--%>
    <%--        dataType:"json",--%>
    <%--        success: function(data){--%>
    <%--            // map.clearOverlays();--%>
    <%--            for (i = 0; i < data.length; i++){--%>
    <%--                var location = data[i];--%>
    <%--                console.log(location.id, location.time, location.latitude, location.longitude);--%>
    <%--                // console.log(location.latitude);--%>
    <%--                // console.log(parInfo.longitude);--%>
    <%--                addMarker(location.id, location.latitude, location.longitude);--%>
    <%--                // var point = new BMap.Point(parInfo.longitude, parInfo.latitude);--%>
    <%--                // var marker = new BMap.Marker(point);        // 创建标注--%>
    <%--                // map.addOverlay(marker);                     // 将标注添加到地图中--%>
    <%--                // marker.setTitle(parInfo.carPlate);--%>
    <%--                // var text = "<p>车牌号：" + parInfo.carPlate + "</p><p>停车时间：" + parInfo.parkTime;--%>
    <%--                // var infoWindow = new BMap.InfoWindow("<p style='font-size:14px;'>" + text + "</p>");--%>
    <%--                // marker.addEventListener("mouseover", getAttr());--%>
    <%--            }--%>
    <%--            // function getAttr() {--%>
    <%--            //     for (var i = 0; i < data.length; i++) {--%>
    <%--            //         if (data[i] == this.getTitle()) {--%>
    <%--            //             var text = "<p>车牌号：" + data[i].carPlate + "</p><p>停车时间：" + parInfo.parkTime;--%>
    <%--            //             var infoWindow = new BMap.InfoWindow("<p style='font-size:14px;'>" + text + "</p>");--%>
    <%--            //         }--%>
    <%--            //         alert(jsonMarkers[i].Name);--%>
    <%--            //     }--%>
    <%--            // }--%>
    <%--        }--%>
    <%--    })--%>
    <%--}--%>
    <%--window.setInterval(updateMap, 3000);--%>

    <%--// 实例化点标记--%>
    <%--function addMarker(id, latitude, longitude) {--%>
    <%--    switch (id){--%>
    <%--        case 0:--%>
    <%--            addMarkerRed(latitude, longitude);--%>
    <%--            break;--%>
    <%--        case 1:--%>
    <%--            addMarkerBlue(latitude, longitude);--%>
    <%--            break;--%>
    <%--        case 2:--%>
    <%--            addMarkerGreen(latitude, longitude);--%>
    <%--            break;--%>
    <%--    }--%>
    <%--}--%>

    <%--function addMarkerRed(latitude, longitude) {--%>
    <%--    marker = new AMap.Marker({--%>
    <%--        icon: "//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-red.png",--%>
    <%--        position: [latitude,longitude],--%>
    <%--        offset: new AMap.Pixel(-13, -30)--%>
    <%--    });--%>
    <%--    marker.setMap(map);--%>
    <%--}--%>

    <%--function addMarkerGreen(latitude, longitude) {--%>
    <%--    marker = new AMap.Marker({--%>
    <%--        icon: icon_green,--%>
    <%--        position: [latitude,longitude],--%>
    <%--        // offset: new AMap.Pixel(-13, -30)--%>
    <%--    });--%>
    <%--    marker.setMap(map);--%>
    <%--}--%>

    <%--function addMarkerBlue(latitude, longitude) {--%>
    <%--    marker = new AMap.Marker({--%>
    <%--        // icon: "//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-blue.png",--%>
    <%--        position: [latitude,longitude],--%>
    <%--        offset: new AMap.Pixel(-13, -30)--%>
    <%--    });--%>
    <%--    marker.setMap(map);--%>
    <%--}--%>

    <%--function addMarkerYellow(latitude, longitude) {--%>
    <%--    marker = new AMap.Marker({--%>
    <%--        icon: icon_yellow,--%>
    <%--        position: [latitude,longitude],--%>
    <%--        offset: new AMap.Pixel(-13, -30)--%>
    <%--    });--%>
    <%--    marker.setMap(map);--%>
    <%--}--%>

    <%--function updateContent() {--%>

    <%--    if (!marker) {--%>
    <%--        return;--%>
    <%--    }--%>

    <%--    // 自定义点标记内容--%>
    <%--    var markerContent = document.createElement("div");--%>

    <%--    // 点标记中的图标--%>
    <%--    var markerImg = document.createElement("img");--%>
    <%--    markerImg.className = "markerlnglat";--%>
    <%--    markerImg.src = "//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-red.png";--%>
    <%--    markerContent.appendChild(markerImg);--%>

    <%--    // 点标记中的文本--%>
    <%--    var markerSpan = document.createElement("span");--%>
    <%--    markerSpan.className = 'marker';--%>
    <%--    markerSpan.innerHTML = "Hi，我被更新啦！";--%>
    <%--    markerContent.appendChild(markerSpan);--%>

    <%--    marker.setContent(markerContent); //更新点标记内容--%>
    <%--    marker.setPosition([116.391467, 39.927761]); //更新点标记位置--%>
    <%--}--%>

    // // 清除 marker
    // function clearMarker() {
    //
    //     if (marker) {
    //         marker.setMap(null);
    //         marker = null;
    //     }
    // }
</script>
</body>

<!-- Mirrored from condorthemes.com/cleanzone/charts.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:37:32 GMT -->
</html>
