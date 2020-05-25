<%--
  Created by IntelliJ IDEA.
  User: xiaoy_000
  Date: 2017/7/6
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <script type="text/javascript" src="jquery.js"></script>
</head>
<body>
<ul class="cl-vnavigation">
    <li <c:if test="${module =='index_u'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/login/toIndexU.do"><i class="fa fa-home"></i><span>主页</span></a>
    </li>
    <li><a href="#"><i class="fa fa-smile-o"></i><span>设备管理</span></a>
        <ul class="sub-menu">
            <li <c:if test="${module =='device_bind'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/device/toBind.do">绑定设备</a></li>
        </ul>
    </li>
    <li><a href="#"><i class="fa fa-list-alt"></i><span>智能锁管理</span></a>
        <ul class="sub-menu">
            <li <c:if test="${module =='lock_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/lock/findByThing.do">智能锁列表</a></li>
            <li <c:if test="${module =='cor_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/cor/findByThing.do">智能锁开关记录列表</a></li>
        </ul>
    </li>
    <li><a href="#"><i class="fa fa-table"></i><span>智能环境管理</span></a>
        <ul class="sub-menu">
            <li <c:if test="${module =='sensor_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/sensor/findByThing.do">环境设备列表</a></li>
            <li <c:if test="${module =='hr_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/hr/findByThing.do">智能环境监测记录列表</a></li>
            <li <c:if test="${module =='hr_chart'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/hr/toFindChart.do">智能环境监测查询</a></li>
        </ul>
    </li>
    <li><a href="#"><i class="fa fa-map-marker"></i><span>智慧交通管理</span></a>
        <ul class="sub-menu">
            <li <c:if test="${module =='car_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/car/findByThing.do">车辆列表</a></li>
            <li <c:if test="${module =='rr_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/rr/findByThing.do">充值记录列表</a></li>
            <li <c:if test="${module =='cr_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/cr/findByThing.do">消费记录列表</a></li>
            <li <c:if test="${module =='pr_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/pr/findByThing.do">停车记录列表</a></li>
        </ul>
    </li>
    <li><a href="#"><i class="fa fa-envelope"></i><span>设备记录管理</span></a>
        <ul class="sub-menu">
            <li <c:if test="${module =='gr_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/gr/findByUser.do">GPS记录列表</a></li>
            <li <c:if test="${module =='gr_find'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/gr/toFindByTime.do">GPS记录查询</a></li>
            <li <c:if test="${module =='ar_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/ar/findByUser.do">报警记录列表</a></li>
            <li <c:if test="${module =='ar_find'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/ar/toFindByTime.do">报警记录查询</a></li>
        </ul>
    </li>
</ul>
</body>
</html>
