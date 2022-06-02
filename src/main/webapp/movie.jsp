<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <link rel="stylesheet" type="text/css" href="./css/remark.css">
    <link rel="stylesheet" href="/admin/plugins/font-awesome/css/font-awesome.min.css">
</head>
<body>

<%--  头部导航条内容 分离到header.jsp中  --%>
<jsp:include page="header.jsp"></jsp:include>

<div class="content">
    <div class="body-bg"></div>
    <!-- 提示框 -->
    <div class="alert"></div>

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
                    <a href="#remark" class="movie-grade-btn flexcenter fl">
                        <i></i>
                        <span>评论</span>
                    </a>
                </div>
            </div>
            <div class="movie-grade-box">
                <div class="grade-box">
                    <c:if test="${fn:length(score) == 3}">
                        <b>${score[0]}<sup>.${score[2]}</sup></b>
                    </c:if>
                    <c:if test="${fn:length(score) == 4}">
                        <b>${score[0]}${score[1]}<sup>.${score[3]}</sup></b>
                    </c:if>
                    <p>总分：10</p>
                </div>
                <ul>
                    <li><p>评论：<span>${filmInfo.remarkCount}</span>人</p></li>
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
                                                        <a id="${schedule.scheduleId}" class="buy-ticket">购票</a>
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
                <%-- 评论显示 --%>
                <div id="remark" class="tab-content" style="display: none">
                    <div class="movie-watch-time bodpnd">
                        <p class="title">${filmInfo.filmName}的短评· · · · · · (全部${filmInfo.remarkCount}条)</p>
                    </div>
                    <div class="remark-container">
                        <div class="comment-send">
                            <form id="remarkForm">
                                <span class="comment-avatar">
                                    <c:if test="${sessionScope.USER_SEESION != null}"><img src="${sessionScope.USER_SEESION.icon}" alt="avatar"></c:if>
                                    <c:if test="${sessionScope.USER_SEESION == null}"><img src="files/icon/default.png" alt="avatar"></c:if>
                                </span>
                                <textarea class="comment-send-input" name="context" form="remarkForm" cols="80" rows="5" placeholder="请自觉遵守互联网相关的政策法规，严禁发布色情、暴力、反动的言论。"></textarea>
                                <input class="comment-send-button" type="button" value="发表评论">
                                <ul class="stars">
                                    <p>给个评分吧</p>
                                    <li>★</li>
                                    <li>★</li>
                                    <li>★</li>
                                    <li>★</li>
                                    <li>★</li>
                                </ul>
                                <input type="hidden" id="filmId" name="filmId" value="${filmInfo.filmId}">
                                <input type="hidden" id="userId" name="userId" value="${sessionScope.USER_SEESION.userId}">
                                <input type="hidden" id="score" name="score">
                            </form>
                        </div>
                        <div class="comment-list" id="commentList">
                            <c:forEach items="${filmInfo.remarkList}" var="remark">
                                <div class="comment">
                                    <span class="comment-avatar">
                                     <img src="${remark.remarkUser.icon}" alt="头像">
                                    </span>
                                    <div class="comment-content" style="margin-top:-5px;">
                                        <p class="comment-content-name">${remark.remarkUser.userName}<c:if test="${remark.isBought  == 1}">&nbsp;&nbsp;<i class="fa fa-ticket" style="color: #FF8D1B;"></i></c:if></p>
                                        <p class="comment-content-article" <c:if test="${remark.isBought == 1}">style="color: #FF8D1B;"</c:if>>
                                            ${remark.context}
                                        </p>
                                        <p class="comment-content-footer">
                                            <span class="comment-content-footer-device">
                                                <div class="movie__rate">
                                                    <script type="text/javascript">
                                                        var score = ${remark.score}; //评分
                                                        for (var i=2;i<=10;i=i+2) {
                                                            if(score >= i) {
                                                                //存入一个完整的金星
                                                                document.write('<img height="17px" width="17px" src="files/star-on.png" style="margin-bottom: 5px" />');
                                                            }else {
                                                                //存入一个完全的灰星
                                                                document.write('<img height="17px" width="17px" src="files/star-off.png" style="margin-bottom: 5px" />');
                                                            }
                                                        }
                                                    </script>
                                                    <span class="comment-content-footer-id">${remark.score}分</span>
                                                    <span class="comment-content-footer-timestamp" style="float: right"><fmt:formatDate value="${remark.remarkTime}" pattern="yyyy-MM-dd HH:mm:ss" /></span>
                                                </div>
                                            </span>
                                        </p>
                                    </div>
                                    <div class="cls"></div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
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
                <p class="ac-title">更多精彩</p>
                <div class="more-movie">
                    <ul>
                        <c:forEach items="${moreWonderfulFilms}" var="moreFilm">
                        <li>
                            <a href="javascript:;">
                                <img src="${moreFilm.poster}" alt="">
                            </a>
                            <div class="aside-info">
                                <h3 class="clearboth">
                                    <a href="javascript:;">${moreFilm.filmName}</a>
                                    <span>${moreFilm.remarkScore}</span>
                                </h3>
                                <p>导演：${moreFilm.remarkScore}</p>
                                <p>主演：${moreFilm.actor}</p>
                                <p>类型：${moreFilm.tag}</p>
                                <p>片长：${moreFilm.runningTime}分钟</p>
                                <a href="/filmInfo?filmId=${moreFilm.filmId}" class="link">选座购票 ＞</a>
                            </div>
                        </li>
                        </c:forEach>
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
<script src="/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript">

    //判断用户是否登录
    $(function () {
        if(${sessionScope.USER_SEESION == null}){
            $(".buy-ticket").click(function () {
                alert("登录后才可购票，您确定要登录吗?");
                window.location.href = "login.jsp";
            })
            $(".comment-send-button").click(function () {
                alert("登录后才可评论，您确定要登录吗?");
                window.location.href = "login.jsp";
            })
        }else {
            $(".buy-ticket").click(function () {
                var scheduleId = $(this).attr("id")
                window.location.href = "/ticket?scheduleId="+scheduleId;
            })

            $(".comment-send-button").click(function () {
                var url = "/createRemark";
                $.post(url, $("#remarkForm").serialize(), function (response) {

                    if (response.success == true) {
                        $('.alert').html(response.message).addClass('alert-success').show().delay(1500).fadeOut();
                        setTimeout(function () {
                            window.location.reload();
                        }, 1500);
                    } else {
                        $('.alert').html(response.message).addClass('alert-danger').show().delay(1500).fadeOut();
                    }
                })
            })
        }
    })


    //星星评分
    $(function() {
        //为星星设置hover效果
        var isClicked = false;
        var beforeClickedIndex = -1;
        var clickNum = 0; //点击同一颗星次数
        $('.stars li').hover(
            function() {
                if(!isClicked) {
                    $(this).css('color', '#FFBF2C');
                    var index = $(this).index();
                    for(var i = 1; i <= index; i++) {
                        $('.stars li:nth-child(' + i + ')').css('color', '#FFBF2C');
                    }
                    $("#score").val(index*2);
                }
            },
            function() {
                if(!isClicked) {
                    $('.stars li').css('color', '#ADADAD');
                }
            }
        );
        //星星点击事件
        $('.stars li').click(function() {
            $('.stars li').css('color', '#ADADAD');
            isClicked = true;
            var index = $(this).index();

            for(var i = 1; i <= index+1; i++) {
                $('.stars li:nth-child(' + i + ')').css('color', '#FFBF2C');
            }
            if(index == beforeClickedIndex) { //两次点击同一颗星星 该星星颜色变化
                clickNum++;
                if(clickNum % 2 == 1) {
                    $('.stars li:nth-child(' + (index+1) + ')').css('color', '#ADADAD');
                    index = index-1;
                } else {
                    $('.stars li:nth-child(' + (index+1) + ')').css('color', '#FFBF2C');
                }
            } else {
                clickNum = 0;
                beforeClickedIndex = index;
            }
            $("#score").val(index*2);
        });
    });


    window.onload = function () {
        setPage("movie.jsp");
        initPublic();
        initScrollToTop();
    };
</script>
</body>
</html>