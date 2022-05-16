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
<header class="header">
    <div class="container">
        <!--logo-->
        <a href="index.jsp" class="logo"></a>
        <!--导航标签-->
        <div class="nav">
            <ul class="navbar">
                <li><a href="index.jsp">首页</a></li>
                <li><a href="movie.jsp">购票</a></li>
                <li><a href="javascript:;">影院</a></li>
                <li><a href="javascript:;">社区</a></li>
            </ul>
        </div>
        <!--购物车-->
        <div class="headcart">
            <i class="cart-icon"></i>
            <b class="card-num"></b>
            <div class="card-tip"></div>
        </div>
        <!--用户登陆注册-->
        <div class="user">
            <div class="userout">
                <a href="login.jsp" class="login cur">登录</a>
                <a href="register.jsp" class="register cur">注册</a>
            </div>
            <div class="userin">
                <a href="javascript:;" class="menu-item-user">
                    <img class="user-face" src="./imgs/userface.jpg" alt="userface">
                    <span class="user-name"></span>
                </a>
                <span class="caret"></span>
                <ul class="dropdown-menu">
                    <li><a href="javascript:;">个人中心</a></li>
                    <li><a href="javascript:;">退出登录</a></li>
                </ul>
            </div>
        </div>
        <!--搜索栏-->
        <div class="search">
            <form class="form-search" action="" method="">
                <input type="text" id="search-input" class="form-search-input" placeholder="搜电影、影院" autocomplete="off"/>
                <a class="form-search-icon" href="javascript:;" onclick="searchBtnClick(this,event)"></a>
            </form>
        </div>

        <!--APP下载-->
        <div class="app-download">
            <span class="phone-icon"></span>
            <span class="app-text">下载APP</span>
            <span class="caret"></span>
            <div class="qrcode-tip">
                <img class="qrcode-img" src="imgs/dingdang-qrcode.png" alt="扫描二维码下载APP"/>
                <p class="qrcode-tip-title">扫码下载客户端</p>
                <p class="qrcode-tip-content">手机购票 方便实惠</p>
            </div>
        </div>
    </div>
</header>

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

<footer class="footer">
    <div class="container">
        <div class="link-nav">
            <ul>
                <li><a href="javascript:;">关于叮当</a></li>
                <li><a href="javascript:;">加入我们</a></li>
                <li><a href="javascript:;">联系我们</a></li>
                <li><a href="javascript:;">隐私政策</a></li>
                <li><a href="javascript:;">问题反馈</a></li>
            </ul>
            <div class="copyright">Copyright © 2019 叮当电影</div>
        </div>
        <div class="sns">
            <a href="javascript:;" class="sina-icon icon"></a>
            <a href="javascript:;" class="wechat-icon icon"></a>
            <a href="javascript:;" class="rss-icon icon"></a>
        </div>
    </div>
</footer>

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