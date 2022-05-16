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
    <title>购票 - 叮当电影</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" type="text/css" href="./css/ticket.css">
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
<div class="container">
    <div class="main-content clearboth">
        <div class="seat-block">
            <!--座位排号-->
            <div class="row-id-container">
                <span class="seat-row-id">1排</span>
                <span class="seat-row-id">2排</span>
                <span class="seat-row-id">3排</span>
                <span class="seat-row-id">4排</span>
                <span class="empty-area"></span>
                <span class="seat-row-id">5排</span>
                <span class="seat-row-id">6排</span>
                <span class="seat-row-id">7排</span>
                <span class="seat-row-id">8排</span>
                <span class="seat-row-id">9排</span>
            </div>
            <div class="seat-container">
                <div class="screen">银幕中央</div>
                <div class="seat-wrapper">
                    <div class="seat-row" data-row-id="1">
                        <span class="seat" data-col-id="1"></span>
                        <span class="seat" data-col-id="2"></span>
                        <span class="seat" data-col-id="3"></span>
                        <span class="seat" data-col-id="4"></span>
                        <span class="seat" data-col-id="5"></span>
                        <span class="empty-area"></span>
                        <span class="seat" data-col-id="6"></span>
                        <span class="seat" data-col-id="7"></span>
                        <span class="seat" data-col-id="8"></span>
                        <span class="seat" data-col-id="9"></span>
                        <span class="seat" data-col-id="10"></span>
                    </div>
                    <div class="seat-row" data-row-id="2">
                        <span class="seat" data-col-id="1"></span>
                        <span class="seat" data-col-id="2"></span>
                        <span class="seat" data-col-id="3"></span>
                        <span class="seat" data-col-id="4"></span>
                        <span class="seat" data-col-id="5"></span>
                        <span class="empty-area"></span>
                        <span class="seat" data-col-id="6"></span>
                        <span class="seat" data-col-id="7"></span>
                        <span class="seat" data-col-id="8"></span>
                        <span class="seat" data-col-id="9"></span>
                        <span class="seat" data-col-id="10"></span>
                    </div>
                    <div class="seat-row" data-row-id="3">
                        <span class="seat" data-col-id="1"></span>
                        <span class="seat" data-col-id="2"></span>
                        <span class="seat" data-col-id="3"></span>
                        <span class="seat sold" data-col-id="4"></span>
                        <span class="seat sold" data-col-id="5"></span>
                        <span class="empty-area"></span>
                        <span class="seat" data-col-id="6"></span>
                        <span class="seat" data-col-id="7"></span>
                        <span class="seat" data-col-id="8"></span>
                        <span class="seat" data-col-id="9"></span>
                        <span class="seat" data-col-id="10"></span>
                    </div>
                    <div class="seat-row" data-row-id="4">
                        <span class="seat" data-col-id="1"></span>
                        <span class="seat" data-col-id="2"></span>
                        <span class="seat" data-col-id="3"></span>
                        <span class="seat" data-col-id="4"></span>
                        <span class="seat" data-col-id="5"></span>
                        <span class="empty-area"></span>
                        <span class="seat" data-col-id="6"></span>
                        <span class="seat" data-col-id="7"></span>
                        <span class="seat" data-col-id="8"></span>
                        <span class="seat" data-col-id="9"></span>
                        <span class="seat" data-col-id="10"></span>
                    </div>
                    <div class="empty-area"></div>
                    <div class="seat-row" data-row-id="5">
                        <span class="seat" data-col-id="1"></span>
                        <span class="seat" data-col-id="2"></span>
                        <span class="seat" data-col-id="3"></span>
                        <span class="seat" data-col-id="4"></span>
                        <span class="seat" data-col-id="5"></span>
                        <span class="empty-area"></span>
                        <span class="seat" data-col-id="6"></span>
                        <span class="seat" data-col-id="7"></span>
                        <span class="seat" data-col-id="8"></span>
                        <span class="seat" data-col-id="9"></span>
                        <span class="seat" data-col-id="10"></span>
                    </div>
                    <div class="seat-row" data-row-id="6">
                        <span class="seat" data-col-id="1"></span>
                        <span class="seat" data-col-id="2"></span>
                        <span class="seat sold" data-col-id="3"></span>
                        <span class="seat sold" data-col-id="4"></span>
                        <span class="seat" data-col-id="5"></span>
                        <span class="empty-area"></span>
                        <span class="seat" data-col-id="6"></span>
                        <span class="seat" data-col-id="7"></span>
                        <span class="seat" data-col-id="8"></span>
                        <span class="seat" data-col-id="9"></span>
                        <span class="seat" data-col-id="10"></span>
                    </div>
                    <div class="seat-row" data-row-id="7">
                        <span class="seat" data-col-id="1"></span>
                        <span class="seat" data-col-id="2"></span>
                        <span class="seat" data-col-id="3"></span>
                        <span class="seat" data-col-id="4"></span>
                        <span class="seat" data-col-id="5"></span>
                        <span class="empty-area"></span>
                        <span class="seat" data-col-id="6"></span>
                        <span class="seat" data-col-id="7"></span>
                        <span class="seat" data-col-id="8"></span>
                        <span class="seat" data-col-id="9"></span>
                        <span class="seat" data-col-id="10"></span>
                    </div>
                    <div class="seat-row" data-row-id="8">
                        <span class="seat" data-col-id="1"></span>
                        <span class="seat" data-col-id="2"></span>
                        <span class="seat" data-col-id="3"></span>
                        <span class="seat" data-col-id="4"></span>
                        <span class="seat" data-col-id="5"></span>
                        <span class="empty-area"></span>
                        <span class="seat" data-col-id="6"></span>
                        <span class="seat" data-col-id="7"></span>
                        <span class="seat" data-col-id="8"></span>
                        <span class="seat" data-col-id="9"></span>
                        <span class="seat" data-col-id="10"></span>
                    </div>
                    <div class="seat-row" data-row-id="9">
                        <span class="seat" data-col-id="1"></span>
                        <span class="seat" data-col-id="2"></span>
                        <span class="seat" data-col-id="3"></span>
                        <span class="seat" data-col-id="4"></span>
                        <span class="seat" data-col-id="5"></span>
                        <span class="empty-area"></span>
                        <span class="seat" data-col-id="6"></span>
                        <span class="seat" data-col-id="7"></span>
                        <span class="seat" data-col-id="8"></span>
                        <span class="seat" data-col-id="9"></span>
                        <span class="seat" data-col-id="10"></span>
                    </div>
                </div>
            </div>
            <div class="seat-description flexcenter">
                <span class="seat"></span>可选座位
                <span class="seat selected"></span>已选座位
                <span class="seat sold"></span>以售座位
                <span class="seat couple"></span>双人座位
            </div>
        </div>
        <!--侧边购票信息-->
        <div class="aside">
            <p class="ticket-title">电影票</p>
            <!--电影信息-->
            <div class="movie-info">
                <a href="javascript:;">
                    <img src="./imgs/poster/ruonengyuni.jpg" alt="">
                </a>
                <div class="aside-info">
                    <h3 class="clearboth">
                        <span class="movie-title ellipse">若能与你共乘海浪之上</span>
                        <span class="movie-score">7.8</span>
                    </h3>
                    <p class="ellipse">导演：汤浅政明</p>
                    <p class="ellipse">主演：片寄凉太/川荣李奈/松本穗香</p>
                    <p class="ellipse">类型：奇幻/爱情/动画</p>
                    <p>片长：96分钟</p>
                </div>
            </div>
            <!--电影票信息-->
            <div class="ticket-info">
                <div class="info-item">
                    <span>影院：</span>
                    <span class="cinema">飞扬影城(正佳IMAX店)</span>
                </div>
                <div class="info-item">
                    <span>版本：</span>
                    <span class="version">3D 日语中字</span>
                </div>
                <div class="info-item">
                    <span>场次：</span>
                    <span class="movie-time">12月26日 12:20</span>
                </div>
                <div class="info-item">
                    <span>票价：</span>
                    <span class="ticket-price"><span>25</span>/张</span>
                </div>
            </div>
            <!--购票信息-->
            <div class="seat-selected">
                <span>座位：</span>
                <div class="ticket-container">
                </div>
                <div class="ticket-total-price">
                    <span>总价：</span>
                    <span class="price">0</span>
                </div>
            </div>
            <div class="ticket-order">
                <input type="text" id="phoneNumInput" placeholder="请输入手机号码">
                <input type="text" id="codeInput" placeholder="请填写验证码">
                <a href="javascript:;" id="getCodeBtn">获取验证码</a>
                <a href="javascript:;" id="ticketOrderBtn">确认选座</a>
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
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/ticket.js"></script>
<script type="text/javascript">
    window.onload = function () {
        setPage("ticket.jsp");
        initPublic();
        chooseTicket();
    };
</script>
</body>
</html>