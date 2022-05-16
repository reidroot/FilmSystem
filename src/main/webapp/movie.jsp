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
    <title>电影 - 叮当电影</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" type="text/css" href="./css/movie.css">
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
                <li><a href="movie.jsp" class="active">购票</a></li>
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

<div class="content">
    <div class="body-bg"></div>
    <div class="container">
        <!-- 电影信息栏 -->
        <div class="movie-info-bar clearboth">
            <div class="movie-poster">
                <img src="./imgs/poster/ruonengyuni.jpg" alt="">
            </div>
            <div class="movie-info">
                <p class="movie-name-zh">若能与你共乘海浪之上</p>
                <p class="movie-name-ods">きみと、波にのれたら</p>
                <ul>
                    <li>
                        <p>上映时间：<span>2019年12月07日</span></p>
                    </li>
                    <li>
                        <p>导演：<span>汤浅政明</span></p>
                        <p>地区：<span>日本</span></p>
                    </li>
                    <li>
                        <p>主演：<span>片寄凉太&nbsp;川荣李奈&nbsp;松本穗香</span></p>
                    </li>
                    <li>
                        <p>类型：<span>奇幻/爱情/动画</span></p>
                        <p>片长：<span>96分钟</span></p>
                    </li>
                    <li>
                        <p class="movie-profile">简介：<span>  夏天、阳光，沙滩、海浪，青年消防员雏罂粟港（片寄凉太
                            配音）和爱好冲浪的向水日菜子（川荣李奈 配音）相遇并迅速展开热恋。看似命中注定的这对恋人，却不幸遭遇生死别离。无法接受港已经离世的雏子，某天突然发现，只要唱起属于两个人的那首歌，港就会从水中出现……</span>
                        </p>
                    </li>
                </ul>
                <div class="movie-wish-grade-btn clearboth">
                    <a href="javascript:;" class="movie-wish-btn flexcenter fl">
                        <i></i>
                        <span>想看</span>
                    </a>
                    <a href="javascript:;" class="movie-grade-btn flexcenter fl">
                        <i></i>
                        <span>评分</span>
                    </a>
                </div>
            </div>
            <div class="movie-grade-box">
                <div class="grade-box">
                    <b>7<sup>.8</sup></b>
                    <p>总分：10</p>
                </div>
                <ul>
                    <li><p>评分：<span>1253</span>人</p></li>
                    <li><p>想看：<span>15684</span>人</p></li>
                    <li><p>票房：<span>3200</span>万</p></li>
                </ul>
            </div>
        </div>
        <!-- 电影主要栏 -->
        <div class="movie-main-container clearboth">
            <!-- 左边 -->
            <div class="main-content">
                <div class="tab-subtitle">
                    <a href="javascript:;" class="active">购票</a>
                    <a href="javascript:;">介绍</a>
                    <a href="javascript:;">图集</a>
                    <a href="javascript:;">影评</a>
                </div>
                <!-- 购票/预购 -->
                <div class="tab-content">
                    <!-- 观影时间 -->
                    <div class="movie-watch-time bodpnd">
                        <p class="title">观影时间</p>
                        <div class="select-item">
                            <a href="javascript:;" class="active">今天(12月25日 周三)</a>
                            <a href="javascript:;">明天(12月26日 周四)</a>
                            <a href="javascript:;">后天(12月27日 周五)</a>
                        </div>
                    </div>
                    <!-- 选择地区 -->
                    <div class="movie-watch-place bodpnd">
                        <div class="mwp-header">
                            <span class="title">选择地区</span>
                            <span class="local-place">
                                <span>湛江</span>
                                [<a href="javascript:;">切换</a>]
                            </span>
                            <div class="city">
                            </div>
                        </div>
                        <div class="select-item">
                            <a href="javascript:;" class="active">全部</a>
                            <a href="javascript:;">赤坎区(<span>2</span>)</a>
                            <a href="javascript:;">霞山区(<span>3</span>)</a>
                            <a href="javascript:;">廉江市(<span>1</span>)</a>
                            <a href="javascript:;">遂溪县(<span>1</span>)</a>
                        </div>
                    </div>
                    <!-- 影院列表 -->
                    <div class="movie-cinema-list">
                        <div class="flexcenter" style="justify-content: left;position: relative;">
                            <span class="title">影院列表</span>
                            <input id="searchCinema" type="text" placeholder="搜索影院">
                            <a href="javascript:;" class="cinema-search-btn"></a>
                        </div>
                        <div class="cinema-list">
                            <ul class="cinema-list-item">
                                <li>
                                    <p class="row1"><a href="javascript:;">飞扬影城(正佳IMAX店)</a></p>
                                    <p class="row2">地址：天河路228号正佳购物广场7楼(近体育中心)</p>
                                    <p class="row3">
                                        <span>IMAX</span><span>3D</span><span>VIP</span><span>P</span>
                                    </p>
                                    <div class="ticket-price-buy">
                                        <span class="ticket-price-q">￥<span>20</span>元起</span>
                                        <a href="javascript:;" class="ticket-buy-btn">选座购票 ∨</a>
                                    </div>
                                    <!-- 排期、购票 -->
                                    <div class="ticket-choose-buy clearboth">
                                        <ul>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="javascript:;" class="fold">收起 ∧</a>
                                    </div>
                                </li>
                                <li>
                                    <p class="row1"><a href="javascript:;">飞扬影城(正佳IMAX店)</a></p>
                                    <p class="row2">地址：天河路228号正佳购物广场7楼(近体育中心)</p>
                                    <p class="row3">
                                        <span>IMAX</span><span>3D</span><span>VIP</span><span>P</span>
                                    </p>
                                    <div class="ticket-price-buy">
                                        <span class="ticket-price-q">￥<span>20</span>元起</span>
                                        <a href="javascript:;" class="ticket-buy-btn">选座购票 ∨</a>
                                    </div>
                                    <!-- 排期、购票 -->
                                    <div class="ticket-choose-buy clearboth">
                                        <ul>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="javascript:;" class="fold">收起 ∧</a>
                                    </div>
                                </li>
                                <li>
                                    <p class="row1"><a href="javascript:;">飞扬影城(正佳IMAX店)</a></p>
                                    <p class="row2">地址：天河路228号正佳购物广场7楼(近体育中心)</p>
                                    <p class="row3">
                                        <span>IMAX</span><span>3D</span><span>VIP</span><span>P</span>
                                    </p>
                                    <div class="ticket-price-buy">
                                        <span class="ticket-price-q">￥<span>20</span>元起</span>
                                        <a href="javascript:;" class="ticket-buy-btn">选座购票 ∨</a>
                                    </div>
                                    <!-- 排期、购票 -->
                                    <div class="ticket-choose-buy clearboth">
                                        <ul>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="javascript:;" class="fold">收起 ∧</a>
                                    </div>
                                </li>
                                <li>
                                    <p class="row1"><a href="javascript:;">飞扬影城(正佳IMAX店)</a></p>
                                    <p class="row2">地址：天河路228号正佳购物广场7楼(近体育中心)</p>
                                    <p class="row3">
                                        <span>IMAX</span><span>3D</span><span>VIP</span><span>P</span>
                                    </p>
                                    <div class="ticket-price-buy">
                                        <span class="ticket-price-q">￥<span>20</span>元起</span>
                                        <a href="javascript:;" class="ticket-buy-btn">选座购票 ∨</a>
                                    </div>
                                    <!-- 排期、购票 -->
                                    <div class="ticket-choose-buy clearboth">
                                        <ul>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="javascript:;" class="fold">收起 ∧</a>
                                    </div>
                                </li>
                                <li>
                                    <p class="row1"><a href="javascript:;">飞扬影城(正佳IMAX店)</a></p>
                                    <p class="row2">地址：天河路228号正佳购物广场7楼(近体育中心)</p>
                                    <p class="row3">
                                        <span>IMAX</span><span>3D</span><span>VIP</span><span>P</span>
                                    </p>
                                    <div class="ticket-price-buy">
                                        <span class="ticket-price-q">￥<span>20</span>元起</span>
                                        <a href="javascript:;" class="ticket-buy-btn">选座购票 ∨</a>
                                    </div>
                                    <!-- 排期、购票 -->
                                    <div class="ticket-choose-buy clearboth">
                                        <ul>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="javascript:;" class="fold">收起 ∧</a>
                                    </div>
                                </li>
                                <li>
                                    <p class="row1"><a href="javascript:;">飞扬影城(正佳IMAX店)</a></p>
                                    <p class="row2">地址：天河路228号正佳购物广场7楼(近体育中心)</p>
                                    <p class="row3">
                                        <span>IMAX</span><span>3D</span><span>VIP</span><span>P</span>
                                    </p>
                                    <div class="ticket-price-buy">
                                        <span class="ticket-price-q">￥<span>20</span>元起</span>
                                        <a href="javascript:;" class="ticket-buy-btn">选座购票 ∨</a>
                                    </div>
                                    <!-- 排期、购票 -->
                                    <div class="ticket-choose-buy clearboth">
                                        <ul>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="javascript:;" class="fold">收起 ∧</a>
                                    </div>
                                </li>
                                <li>
                                    <p class="row1"><a href="javascript:;">飞扬影城(正佳IMAX店)</a></p>
                                    <p class="row2">地址：天河路228号正佳购物广场7楼(近体育中心)</p>
                                    <p class="row3">
                                        <span>IMAX</span><span>3D</span><span>VIP</span><span>P</span>
                                    </p>
                                    <div class="ticket-price-buy">
                                        <span class="ticket-price-q">￥<span>20</span>元起</span>
                                        <a href="javascript:;" class="ticket-buy-btn">选座购票 ∨</a>
                                    </div>
                                    <!-- 排期、购票 -->
                                    <div class="ticket-choose-buy clearboth">
                                        <ul>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tcb-lt">
                                                    <p class="time">12:20</p>
                                                    <p>3D 日文中字</p>
                                                </div>
                                                <div class="tcb-rt">
                                                    <p class="ticket-price">￥25</p>
                                                    <a href="ticket.jsp" class="buy-ticket">购票</a>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="javascript:;" class="fold">收起 ∧</a>
                                    </div>
                                </li>
                            </ul>
                            <script type="text/javascript">
                                // 选座购票 父div
                                var tpb = document.querySelectorAll(".ticket-price-buy");
                                // 选座购票
                                var tbb = document.querySelectorAll(".ticket-buy-btn");
                                // 购票项div
                                var tcb = document.querySelectorAll(".ticket-choose-buy");
                                // 收起
                                var tcbf = document.querySelectorAll(".ticket-choose-buy .fold");
                                // 为"选座购票"按钮添加事件
                                for (let i = 0; i < tpb.length; i++) {
                                    tbb[i].onclick = function () {
                                        tpb[i].style.display = "none";
                                        tcb[i].style.display = "block";
                                    };
                                }
                                // 为"收起"按钮添加事件
                                for (let i = 0; i < tcb.length; i++) {
                                    tcbf[i].onclick = function () {
                                        tcb[i].style.display = "none";
                                        tpb[i].style.display = "block";
                                    };
                                }
                            </script>
                        </div>
                    </div>
                </div>
                <div class="tab-content" style="display: none">介绍</div>
                <div class="tab-content" style="display: none">图集</div>
                <div class="tab-content" style="display: none">影评</div>
                <script type="text/javascript">
                    let tsa = document.querySelectorAll(".tab-subtitle a");
                    let tcnt = document.querySelectorAll(".tab-content");
                    for (let i = 0; i < tsa.length; i++) {
                        tsa[i].addEventListener("click", function () {
                            if (!hasClass(this, "active")) {
                                // tab添加类active，移除
                                addClass(this, "active");
                                for (let t of tsa) {
                                    if (this === t) {
                                        continue;
                                    }
                                    if (hasClass(t, 'active')) {
                                        removeClass(t, 'active');
                                        break;
                                    }
                                }
                                //display block
                                tcnt[i].style.display = "block";
                                for (let t of tcnt) {
                                    if (tcnt[i] === t) {
                                        continue;
                                    } else {
                                        t.style.display = "none";
                                    }
                                }
                            }
                        }, false);
                    }
                </script>
            </div>
            <!-- 右边 -->
            <div class="aside-content">
                <p class="ac-title">更多热映</p>
                <div class="more-movie">
                    <ul>
                        <li>
                            <a href="javascript:;">
                                <img src="./imgs/poster/yishengyouni.jpg" alt="">
                            </a>
                            <div class="aside-info">
                                <h3 class="clearboth">
                                    <a href="javascript:;">一生有你</a>
                                    <span>7.5</span>
                                </h3>
                                <p>导演：卢庚戌</p>
                                <p>主演：徐娇/谢彬彬/晏紫东</p>
                                <p>类型：爱情/青春</p>
                                <p>片长：90分钟</p>
                                <a href="javascript:;" class="link">选座购票 ＞</a>
                            </div>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <img src="./imgs/poster/yishengyouni.jpg" alt="">
                            </a>
                            <div class="aside-info">
                                <h3 class="clearboth">
                                    <a href="javascript:;">一生有你</a>
                                    <span>7.5</span>
                                </h3>
                                <p>导演：卢庚戌</p>
                                <p>主演：徐娇/谢彬彬/晏紫东</p>
                                <p>类型：爱情/青春</p>
                                <p>片长：90分钟</p>
                                <a href="javascript:;" class="link">选座购票 ＞</a>
                            </div>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <img src="./imgs/poster/yishengyouni.jpg" alt="">
                            </a>
                            <div class="aside-info">
                                <h3 class="clearboth">
                                    <a href="javascript:;">一生有你</a>
                                    <span>7.5</span>
                                </h3>
                                <p>导演：卢庚戌</p>
                                <p>主演：徐娇/谢彬彬/晏紫东</p>
                                <p>类型：爱情/青春</p>
                                <p>片长：90分钟</p>
                                <a href="javascript:;" class="link">选座购票 ＞</a>
                            </div>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <img src="./imgs/poster/yishengyouni.jpg" alt="">
                            </a>
                            <div class="aside-info">
                                <h3 class="clearboth">
                                    <a href="javascript:;">一生有你</a>
                                    <span>7.5</span>
                                </h3>
                                <p>导演：卢庚戌</p>
                                <p>主演：徐娇/谢彬彬/晏紫东</p>
                                <p>类型：爱情/青春</p>
                                <p>片长：90分钟</p>
                                <a href="javascript:;" class="link">选座购票 ＞</a>
                            </div>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <img src="./imgs/poster/yishengyouni.jpg" alt="">
                            </a>
                            <div class="aside-info">
                                <h3 class="clearboth">
                                    <a href="javascript:;">一生有你</a>
                                    <span>7.5</span>
                                </h3>
                                <p>导演：卢庚戌</p>
                                <p>主演：徐娇/谢彬彬/晏紫东</p>
                                <p>类型：爱情/青春</p>
                                <p>片长：90分钟</p>
                                <a href="javascript:;" class="link">选座购票 ＞</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
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
<div id="toTop"></div>

<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
    window.onload = function () {
        setPage("movie.jsp");
        initPublic();
        initScrollToTop();
    };
</script>
</body>
</html>