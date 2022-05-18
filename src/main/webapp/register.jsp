<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022/5/17
  Time: 2:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>注册 - 叮当电影</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" type="text/css" href="./css/register.css">
</head>
<body>

<%--  头部导航条内容 分离到header.jsp中  --%>
<jsp:include page="header.jsp"></jsp:include>

<div class="wrap">
    <div class="center-box">
        <div class="center-box-head">
            <h3 class="center-box-title">
                注册
                <span class="sign-switch">
                    已有账号？
                    <a href="login.jsp">立即登录</a>
                </span>
            </h3>
        </div>
        <form action="" id="center-box-form">
            <div class="form-item">
                <i class="username-icon icon"></i>
                <input type="text" name="" id="username" autocomplete="off" placeholder="用户名"
                       onfocus="this.placeholder=''" onblur="this.placeholder='用户名'">
            </div>
            <div class="form-item">
                <i class="e-mail-icon icon"></i>
                <input type="text" name="" id="e-mail" autocomplete="off" placeholder="邮箱"
                       onfocus="this.placeholder=''" onblur="this.placeholder='邮箱'">
            </div>
            <div class="form-item">
                <i class="password-icon icon"></i>
                <input type="password" name="" id="password" autocomplete="off" placeholder="密码"
                       onfocus="this.placeholder=''" onblur="this.placeholder='密码'">
            </div>
            <div class="form-item">
                <i class="re-password-icon icon"></i>
                <input type="password" name="" id="re-password" autocomplete="off" placeholder="确认密码"
                       onfocus="this.placeholder=''" onblur="this.placeholder='确认密码'">
            </div>
            <button id="form-submit-btn" type="submit">注册</button>
        </form>
    </div>
</div>

<%--  底部导航条内容 分离到footer.jsp中  --%>
<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
    window.onload = function () {
        setPage("register.jsp");
        initPublic();
    };
</script>

</body>
</html>