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
    <li <c:if test="${module =='index_a'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/login/toIndexA.do"><i class="fa fa-home"></i><span>主页</span></a>
    </li>
    <%--<li><a href="#"><i class="fa fa-list-alt"></i><span>设备管理</span></a>--%>
        <%--<ul class="sub-menu">--%>
            <%--<li <c:if test="${module =='device_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/device/findBySchool.do">设备信息</a></li>--%>
        <%--</ul>--%>
    <%--</li>--%>
    <li><a href="#"><i class="fa fa-smile-o"></i><span>用户管理</span></a>
        <ul class="sub-menu">
            <li <c:if test="${module =='user_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/user/findByThing.do">用户列表</a></li>
            <li <c:if test="${module =='user_add'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/user/toAdd.do">用户添加</a></li>
        </ul>
    </li>
    <li><a href="#"><i class="fa fa-list-alt"></i><span>登录管理</span></a>
        <ul class="sub-menu">
            <li <c:if test="${module =='lr_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/lr/findByThing.do">登录记录列表</a></li>
        </ul>
    </li>
    <li><a href="#"><i class="fa fa-table"></i><span>智能锁管理</span></a>
        <ul class="sub-menu">
            <li <c:if test="${module =='lock_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/lock/findByThing.do">智能锁列表</a></li>
        </ul>
    </li>
    <li><a href="#"><i class="fa fa-map-marker"></i><span>智能环境管理</span></a>
        <ul class="sub-menu">
            <li <c:if test="${module =='sensor_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/sensor/findByThing.do">环境设备列表</a></li>
        </ul>
    </li>
    <li><a href="#"><i class="fa fa-envelope"></i><span>智慧交通管理</span></a>
        <ul class="sub-menu">
            <li <c:if test="${module =='car_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/car/findByThing.do">车辆列表</a></li>
        </ul>
    </li>
</ul>
</body>
</html>
