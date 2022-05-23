<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<%--  头部导航条内容 分离到header.jsp中  --%>
<jsp:include page="header.jsp"></jsp:include>

<div class="content">
    <div class="body-bg"></div>
    <div class="container">
        <!-- 电影信息栏 -->
        <div class="movie-info-bar clearboth">
            <div class="movie-poster">
                <img src="${filmInfo.poster}" alt="">
            </div>
            <div class="movie-info">
                <p class="movie-name-zh">${filmInfo.filmName}</p>
                <ul>
                    <li>
                        <p>上映时间：
                        <span>
                        <fmt:formatDate value="${filmInfo.releaseTime}" pattern="yyyy-MM-dd" />
                        </span>
                        </p>
                    </li>
                    <li>
                        <p>导演：<span>${filmInfo.director}</span></p>
                        <p>地区：<span>${filmInfo.nation}</span></p>
                    </li>
                    <li>
                        <p>主演：<span>${filmInfo.actor}</span></p>
                    </li>
                    <li>
                        <p>类型：<span>${filmInfo.tag}</span></p>
                        <p>片长：<span>${filmInfo.runningTime}分钟</span></p>
                    </li>
                    <li>
                        <p class="movie-profile">简介：
                        <span>
                            ${filmInfo.description}
                        </span>
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
                    <b>${score[0]}<sup>.${score[2]}</sup></b>
                    <p>总分：10</p>
                </div>
                <ul>
                    <li><p>评分：<span>${filmInfo.remarkCount}</span>人</p></li>
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
                    <a href="javascript:;">影评</a>
                </div>
                <!-- 购票/预购 -->
                <div class="tab-content">
                    <!-- 观影时间 -->
                    <div class="movie-watch-time bodpnd">
                        <p class="title">观影时间</p>
                        <div class="select-item">
                            <a href="javascript:;" class="active"><fmt:formatDate value="${scheduleList[0].startTime}" pattern="yyyy-MM-dd" /></a>
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
                                <c:forEach items="${cinemaList}" var="cinema">
                                <li>
                                    <p class="row1"><a href="javascript:;">${cinema.cinemaName}</a></p>
                                    <p class="row2">${cinema.cinemaName}</p>
                                    <p class="row3">
                                        <span>IMAX</span><span>3D</span><span>VIP</span><span>P</span>
                                    </p>
                                    <div class="ticket-price-buy">
                                        <span class="ticket-price-q">￥<span>
                                         <c:set var="totalPrice" value="0"/>
                                         <c:set var="count" value="0"/>
                                         <c:forEach items="${scheduleList}" var="schedule">
                                            <c:if test="${schedule.scheduleCinema.cinemaId == cinema.cinemaId}">
                                                <c:set var="totalPrice" value="${totalPrice+schedule.price}"/>
                                                <c:set var="count" value="${count+1}"/>
                                            </c:if>
                                         </c:forEach>
                                         <fmt:formatNumber type="number" value="${totalPrice/count}" maxFractionDigits="0"/>
                                        </span>元(均)</span>
                                        <a href="javascript:;" class="ticket-buy-btn">选座购票 ∨</a>
                                    </div>
                                    <!-- 排期、购票 -->
                                    <div class="ticket-choose-buy clearboth">
                                        <ul>
                                            <c:forEach items="${scheduleList}" var="schedule">
                                                <c:if test="${schedule.scheduleCinema.cinemaId == cinema.cinemaId}">
                                                <li>
                                                    <div class="tcb-lt">
                                                        <p class="time">
                                                            <fmt:formatDate value="${schedule.startTime}" pattern="HH:mm" />
                                                        </p>
                                                        <p>${schedule.language}</p>
                                                    </div>
                                                    <div class="tcb-rt">
                                                        <p class="ticket-price"><fmt:formatNumber type="number" value="${schedule.price}" maxFractionDigits="0"/></p>
                                                        <a href="/ticket?scheduleId=${schedule.scheduleId}" class="buy-ticket">购票</a>
                                                    </div>
                                                </li>
                                            </c:if>
                                            </c:forEach>
                                        </ul>
                                        <a href="javascript:;" class="fold">收起 ∧</a>
                                    </div>
                                </li>
                                </c:forEach>
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
                <div class="tab-content" style="display: none">
                    <div class="movie-watch-time bodpnd">
                        <p class="title">${filmInfo.filmName}的短评· · · · · · (全部${filmInfo.remarkCount}条)</p>
                    </div>
                    <c:forEach items="${filmInfo.remarkList}" var="remark">
                    <div class="movie-watch-time bodpnd" <c:if test="${remark.isBought  == 1}">style="color: #FF8D1B;"</c:if>>
                        ${remark.remarkUser.userName}
                        <fmt:formatDate value="${remark.remarkTime}" pattern="yyyy-MM-dd HH:mm:ss" />
                        <br>
                        ${remark.context}
                    </div>
                    </c:forEach>
                </div>
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

<%--  底部导航条内容 分离到footer.jsp中  --%>
<jsp:include page="footer.jsp"></jsp:include>


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