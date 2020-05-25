<%--
  Created by IntelliJ IDEA.
  User: xiaoy_000
  Date: 2017/7/5
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div id="head-nav" class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="fa fa-gear"></span>
            </button>
            <a class="navbar-brand" href="#"><span> NB-IOT 实验平台</span></a>
        </div>
        <div class="navbar-collapse collapse">

            <ul class="nav navbar-nav navbar-right user-nav">
                <li class="dropdown profile_menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img alt="Avatar" src="../images/avatar2.jpg" />
                        <%
                            String u=session.getAttribute("name").toString();
                        %>
                        <%out.print(u); %>
                        <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath }/user/findOne.do">我的信息</a></li>
                        <%--<li><a href="${pageContext.request.contextPath }/user/toUpdate.do">修改信息</a></li>--%>
                        <li><a href="${pageContext.request.contextPath }/user/toUpdatePwd.do">修改密码</a></li>
                        <li class="divider"></li>
                        <li><a href="${pageContext.request.contextPath }/login/toLogin.do">Sign Out</a></li>
                    </ul>
                </li>
            </ul>

        </div><!--/.nav-collapse -->
    </div>
</div>
</body>
</html>
