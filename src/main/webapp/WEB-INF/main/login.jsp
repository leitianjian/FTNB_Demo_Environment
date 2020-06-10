<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Kode is a Premium Bootstrap Admin Template, It's responsive, clean coded and mobile friendly">
    <meta name="keywords" content="bootstrap, admin, dashboard, flat admin template, responsive," />
    <title>NBIOT - 登录</title>

    <!-- ========== Css Files ========== -->
    <link href="../login/css/root.css" rel="stylesheet">
    <style type="text/css">
        body{background: #F5F5F5;}
    </style>
    <script type="text/javascript" src="../login/js/jquery.min.js"></script>
    <script type="text/javascript">
        function check_login() {
            var reg = /^\w{5,15}$/;
            //校验账号格式
            var u_id = $("#sy_ui_id").val();
            if(u_id == ""){
                $("#id_msg").text("请输入用户名");
                return;
            }else if(!reg.test(u_id)) {
                $("#sy_ui_id").val("");
                $("#id_msg").text("请输入5-15位的字母、数字组合");
                return;
            }
            //校验密码格式
            var u_pwd = $("#sy_ui_pwd").val();
            if(u_pwd == ""){
                $("#pwd_msg").text("请输入密码");
                return;
            }else if(!reg.test(u_pwd)) {
                $("#sy_ui_pwd").val("");
                $("#pwd_msg").text("请输入5-15位的字母、数字组合");
                return;
            }

            $.post(
                "login.do",
                $("form").serialize(),
                function(data){
                    if(data == 1){
                        $("#id_msg").text("账号不存在.");
                    }else if(data == 2){
                        $("#pwd_msg").text("密码错误.");
                    }else if(data == 3){
                        $("#pwd_msg").text("非用户账号.");
                    }else if(data == 0){
                        location.href="toIndex.do";
                    }
                }
            );
        }

        //清理错误信息
        function clear_msg(msg_id){
            $("#" + msg_id).text("");
        }
    </script>

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

<div class="login-form">
    <form action="#">
        <div class="top">
            <img src="../login/img/ft-logo.png" alt="icon" class="icon">
            <h1> 登 录 </h1>
            <h4>NB-IOT实验箱平台</h4>
        </div>
        <div class="form-area">
            <div class="group">
                <input id="sy_ui_id" name="sy_ui_id" type="text" class="form-control" placeholder="用户名" onfocus="clear_msg('id_msg');">
                <i class="fa fa-user"></i>
                <label for="sy_ui_id" id="id_msg" style="color: red;"></label>
            </div>
            <div class="group">
                <input id="sy_ui_pwd" name="sy_ui_pwd" type="password" class="form-control" placeholder="密码" onfocus="clear_msg('pwd_msg');">
                <i class="fa fa-key"></i>
                <label for="sy_ui_pwd" id="pwd_msg" style="color: red;"></label>
            </div>
            <%--<div class="checkbox checkbox-primary">--%>
            <%--<input id="checkbox101" type="checkbox" checked>--%>
            <%--<label for="checkbox101"> Remember Me</label>--%>
            <%--</div>--%>
            <button type="button" class="btn btn-default btn-block" onclick="check_login();">登 录</button>
            <br>
            <div class="text-center out-links">版权所有：<a href="http://www.fantaitech.com/" target="_blank">无锡泛太科技有限公司</a></div>
        </div>
    </form>
    <%--<div class="footer-links row">--%>
    <%--<div class="col-xs-6"><a href="${pageContext.request.contextPath}/login/toRegister.do"><i class="fa fa-external-link"></i> 现在注册</a></div>--%>
    <%--&lt;%&ndash;<div class="col-xs-6 text-right"><a href="#"><i class="fa fa-lock"></i> Forgot password</a></div>&ndash;%&gt;--%>
    <%--</div>--%>
</div>



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