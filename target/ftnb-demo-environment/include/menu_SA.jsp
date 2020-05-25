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
    <li <c:if test="${module =='index_sa'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/login/toIndexSA.do"><i class="fa fa-home"></i><span>主页</span></a>
    </li>
    <li><a href="#"><i class="fa fa-list-alt"></i><span>学校管理</span></a>
        <ul class="sub-menu">
            <li <c:if test="${module =='school_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/school/findByThing.do">学校列表</a></li>
            <li <c:if test="${module =='school_add'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/school/toAdd.do">学校添加</a></li>
        </ul>
    </li>
    <li><a href="#"><i class="fa fa-smile-o"></i><span>用户管理</span></a>
        <ul class="sub-menu">
            <li <c:if test="${module =='user_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/user/findByThing.do">用户列表</a></li>
            <li <c:if test="${module =='user_add'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/user/toAdd.do">用户添加</a></li>
        </ul>
    </li>
    <li><a href="#"><i class="fa fa-table"></i><span>登录管理</span></a>
        <ul class="sub-menu">
            <li <c:if test="${module =='lr_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/lr/findByThing.do">登录记录列表</a></li>
        </ul>
    </li>
    <li><a href="#"><i class="fa fa-map-marker"></i><span>设备管理</span></a>
        <ul class="sub-menu">
            <li <c:if test="${module =='device_list'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/device/findByThing.do">设备列表</a></li>
            <li <c:if test="${module =='device_add'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/device/toAdd.do">设备添加</a></li>
        </ul>
    </li>
</ul>
</body>
</html>
