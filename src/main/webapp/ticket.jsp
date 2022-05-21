<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    <c:forEach items="${rows}" var="row">
                    <div class="seat-row" data-row-id="${row}">
                        <c:forEach items="${cols}" var="col">
                            <span class="seat<c:if test="${seat[row][col] == 1}"> sold</c:if>" data-col-id="${col}"></span>
                            <c:if test="${col == 5}">
                                <span class="empty-area"></span>
                            </c:if>
                        </c:forEach>
                    </div>
                    </c:forEach>
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
                    <img src="${schedule.scheduleFilm.poster}" alt="">
                </a>
                <div class="aside-info">
                    <h3 class="clearboth">
                        <span class="movie-title ellipse">${schedule.scheduleFilm.filmName}</span>
<%--                        <span class="movie-score">7.8</span>--%>
                    </h3>
                    <p class="ellipse">导演：${schedule.scheduleFilm.director}</p>
                    <p class="ellipse">主演：${schedule.scheduleFilm.actor}</p>
                    <p class="ellipse">类型：${schedule.scheduleFilm.tag}</p>
                    <p>片长：${schedule.scheduleFilm.runningTime}分钟</p>
                </div>
            </div>
            <!--电影票信息-->
            <div class="ticket-info">
                <div class="info-item">
                    <span>影院：</span>
                    <span class="cinema">${schedule.scheduleCinema.cinemaName}</span>
                </div>
                <div class="info-item">
                    <span>版本：</span>
                    <span class="version">${schedule.language}</span>
                </div>
                <div class="info-item">
                    <span>场次：</span>
                    <span class="movie-time"><fmt:formatDate value="${schedule.startTime}" pattern="MM月dd日 HH:mm"/></span>
                </div>
                <div class="info-item">
                    <span>票价：</span>
                    <span class="ticket-price"><span><fmt:formatNumber type="number" value="${schedule.price}" maxFractionDigits="0"/></span>/张</span>
                </div>
            </div>
            <!--购票信息-->
            <div class="seat-selected">
                <span>座位：</span>
                <div class="ticket-container">
                </div>
                <div class="ticket-total-price">
                    <span>总价：</span>
                    <span id="amount" class="price">0</span>
                </div>
            </div>
            <div class="ticket-order">
                <a onclick="purchase('${sessionScope.USER_SEESION.userId}','${schedule.scheduleId}')" id="ticketOrderBtn">确认选座</a>
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