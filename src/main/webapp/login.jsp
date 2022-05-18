<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022/5/17
  Time: 2:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>登录 - 叮当电影</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" type="text/css" href="./css/login.css">
</head>
<body>

<%--  头部导航条内容 分离到header.jsp中  --%>
<jsp:include page="header.jsp"></jsp:include>

<div class="wrap">
    <div class="center-box">
        <div class="center-box-head">
            <h3 class="center-box-title">
                登录
                <span class="sign-switch">
                    还没有账号？
                    <a href="register.jsp">立即注册</a>
                </span>
            </h3>
        </div>
        <form action="" id="center-box-form">
            <div class="form-item">
                <i class="username-icon icon"></i>
                <input type="text" name="" id="username" autocomplete="off" placeholder="请输入您的用户名">
                <span class="input-tip"></span>
            </div>
            <div class="form-item">
                <i class="password-icon icon"></i>
                <input type="password" name="" id="password" autocomplete="off" placeholder="请输入您的密码">
                <span class="input-tip"></span>
            </div>
            <div class="form-item">
                <i class="captcha-icon icon"></i>
                <input type="text" name="" id="captcha" autocomplete="off" placeholder="请输入验证码">
                <span class="input-tip"></span>
                <img id="captcha-img" src="" alt="验证码">
                <span class="captcha-tip">看不清，换一张</span>
            </div>
            <p>
                <!--<label for="remember" style="color: #666;cursor: pointer;">
                    <input type="checkbox" id="remember">
                    记住登录状态
                </label>-->
                <a href="" class="forget-password">忘记密码？</a>
            </p>
            <button id="form-submit-btn" type="button" onclick="login()">登录</button>
        </form>
    </div>
</div>

<%--  底部导航条内容 分离到footer.jsp中  --%>
<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript" src="./js/main.js"></script>
<script type="text/javascript" src="./js/login_register.js"></script>
<script type="text/javascript">
    window.onload = function () {
        setPage("login.jsp");
        initPublic();
        initLoginPage();
    };
</script>
</body>
</html>