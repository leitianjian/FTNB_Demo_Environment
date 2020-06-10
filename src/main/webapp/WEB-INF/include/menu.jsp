<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <script type="text/javascript" src="../js/jquery.js"></script>

    <script type="text/javascript">
        function update_time() {
            $.post(
                "SetTime.do",
                $("form").serialize(),
            );
        }
    </script>

</head>
<body>
<ul class="cl-vnavigation">
    <li <c:if test="${module =='index'}">class="active"</c:if>><a href="${pageContext.request.contextPath }/login/toIndex.do"><i class="fa fa-home"></i><span>主页</span></a>
    </li>
</ul>

<div class="login-form">
    <form action="#">
        <div class="top">
            <h4> 设置时间 </h4>
        </div>
        <div class="form-area">
            <div class="group">
                <input id="time" name="time" type="text" class="form-control" placeholder="Time Slot" onfocus="clear_msg('id_msg');">
                <i class="fa fa-user"></i>
                <label for="time" id="id_time" style="color: red;"></label>
            </div>
            <%--<div class="checkbox checkbox-primary">--%>
            <%--<input id="checkbox101" type="checkbox" checked>--%>
            <%--<label for="checkbox101"> Remember Me</label>--%>
            <%--</div>--%>
            <button type="button" class="btn btn-default btn-block" onclick="update_time();">SET</button>
            <br>
        </div>
    </form>
    <%--<div class="footer-links row">--%>
    <%--<div class="col-xs-6"><a href="${pageContext.request.contextPath}/login/toRegister.do"><i class="fa fa-external-link"></i> 现在注册</a></div>--%>
    <%--&lt;%&ndash;<div class="col-xs-6 text-right"><a href="#"><i class="fa fa-lock"></i> Forgot password</a></div>&ndash;%&gt;--%>
    <%--</div>--%>
</div>


</body>
</html>
