<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022/5/18
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header">
    <div class="container">
        <!--logo-->
        <a href="/index" class="logo"></a>
        <!--导航标签-->
        <div class="nav">
            <ul class="navbar">
                <li><a href="/index">首页</a></li>
                <li><a href="/filmInfo?filmId=1">购票</a></li>
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
            <c:if test="${empty sessionScope.USER_SEESION}">
                <div class="userout">
                    <a href="login.jsp" class="login cur">登录</a>
                    <a href="register.jsp" class="register cur">注册</a>
                </div>
            </c:if>
            <c:if test="${!empty sessionScope.USER_SEESION}">
                <div class="userin">
                    <a href="javascript:;" class="menu-item-user">
                        <img class="user-face" src="${sessionScope.USER_SEESION.icon}" alt="userface">
                        <span class="user-name">${sessionScope.USER_SEESION.userName}</span>
                    </a>
                    <span class="caret"></span>
                    <ul class="dropdown-menu">
                        <li><a href="personal.jsp">个人中心</a></li>
                        <li><a href="/logout">退出登录</a></li>
                    </ul>
                </div>
            </c:if>
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