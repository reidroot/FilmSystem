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

<%--  头部导航条内容 分离到header.jsp中  --%>
<jsp:include page="header.jsp"></jsp:include>

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

<%--  底部导航条内容 分离到footer.jsp中  --%>
<jsp:include page="footer.jsp"></jsp:include>

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