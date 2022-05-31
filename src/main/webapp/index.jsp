<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022/5/17
  Time: 2:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>叮当电影 - 搜罗全网好电影</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" type="text/css" href="./css/index.css">
</head>
<body>

<%--  头部导航条内容 分离到header.jsp中  --%>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
    <div class="slidey">
        <ul id="slidey-content" style="display: none">
            <c:forEach items="${slideList}" var="slide">
            <li>
                <img src="${slide.img}" alt="">
                <p class="title">${slide.slideFilm.filmName}</p>
                <p class="description">${slide.slideFilm.description}</p>
            </li>
            </c:forEach>
        </ul>
        <div class="slidey-main">
            <a href="movie.jsp" class="slidey-main-link"></a>
            <div class="slidey-overlay">
                <p class="slidey-overlay-title"></p>
                <p class="slidey-overlay-description"></p>
                <span class="slidey-progress"></span>
            </div>
            <div class="slidey-ctrls slidey-ctrls-pre"></div>
            <div class="slidey-ctrls slidey-ctrls-next"></div>
        </div>
        <div class="slidey-list">
            <ul>
                <li>
                    <table class="slidey-list-table">
                        <tr>
                            <td rowspan="2" class="slidey-list-img">
                                <div></div>
                            </td>
                            <td class="slidey-list-title"></td>
                        </tr>
                        <tr>
                            <td class="slidey-list-description"></td>
                        </tr>
                    </table>
                </li>
                <li>
                    <table class="slidey-list-table">
                        <tr>
                            <td rowspan="2" class="slidey-list-img">
                                <div></div>
                            </td>
                            <td class="slidey-list-title"></td>
                        </tr>
                        <tr>
                            <td class="slidey-list-description"></td>
                        </tr>
                    </table>
                </li>
                <li>
                    <table class="slidey-list-table">
                        <tr>
                            <td rowspan="2" class="slidey-list-img">
                                <div></div>
                            </td>
                            <td class="slidey-list-title"></td>
                        </tr>
                        <tr>
                            <td class="slidey-list-description"></td>
                        </tr>
                    </table>
                </li>
                <li>
                    <table class="slidey-list-table">
                        <tr>
                            <td rowspan="2" class="slidey-list-img">
                                <div></div>
                            </td>
                            <td class="slidey-list-title"></td>
                        </tr>
                        <tr>
                            <td class="slidey-list-description"></td>
                        </tr>
                    </table>
                </li>
            </ul>
        </div>
    </div>

    <div class="movie-grid">
        <div class="panel">
            <div class="main">
                <div class="panel-header">
                    <span class="panel-title">正在热映（<span>20</span>部）</span>
                    <a href="javascript:;" class="panel-more">更多</a>
                </div>
                <div class="movie-list">
                    <ul>
                        <c:forEach items="${filmList}" var="film" begin="0" end="7">
                            <li>
                                <a href="/filmInfo?filmId=${film.filmId}" class="movie-poster">
                                    <img src="${film.poster}" alt="" class="poster">
                                    <span class="movie-score">${film.remarkScore}</span>
                                </a>
                                <span class="movie-title">${film.filmName}</span>
                                <a href="/filmInfo?filmId=${film.filmId}" class="movie-ticket-buy">选座购票</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="aside">
                <div class="panel-header">
                    <span class="panel-title">今日票房</span>
                    <a href="javascript:;" class="panel-more">更多</a>
                </div>
                <div class="movie-rank">
                    <ul>
                        <li class="movie-rank-top1">
                            <a href="javascript:;">
                                <span class="movie-rank-num movie-rank-top3">1</span>
                                <img src="./imgs/poster/haishanggangqinshi.jpg" alt="">
                                <div>
                                    <p class="movie-rank-name">海上钢琴师</p>
                                    <span class="box-office">1500万</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num movie-rank-top3">2</span>
                                <p class="movie-rank-name">叶问4</p>
                                <span class="box-office">1400万</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num movie-rank-top3">3</span>
                                <p class="movie-rank-name">若能与你共乘海浪之上</p>
                                <span class="box-office">1000万</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num">4</span>
                                <p class="movie-rank-name">吹哨人</p>
                                <span class="box-office">900万</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num">5</span>
                                <p class="movie-rank-name">大约在冬季</p>
                                <span class="box-office">800万</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num">6</span>
                                <p class="movie-rank-name">吹哨人</p>
                                <span class="box-office">700万</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num">7</span>
                                <p class="movie-rank-name">天·火</p>
                                <span class="box-office">600万</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num">8</span>
                                <p class="movie-rank-name">一生有你</p>
                                <span class="box-office">550万</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num">9</span>
                                <p class="movie-rank-name">冰雪奇缘2</p>
                                <span class="box-office">450万</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="panel">
            <div class="main">
                <div class="panel-header">
                    <span class="panel-title">即将上映（<span>30</span>部）</span>
                    <a href="javascript:;" class="panel-more">更多</a>
                </div>
                <div class="movie-list">
                    <ul>
                        <li>
                            <a href="javascript:;" class="movie-poster">
                                <img src="./imgs/poster/bingxueqiyuan2.jpg" alt="" class="poster">
                                <span class="movie-score">12月25日上映</span>
                            </a>
                            <span class="movie-title">冰雪奇缘2</span>
                            <a href="javascript:;" class="movie-ticket-buy">预售</a>
                        </li>
                        <li>
                            <a href="javascript:;" class="movie-poster">
                                <img src="./imgs/poster/chuixiaoren.jpg" alt="" class="poster">
                                <span class="movie-score">12月25日上映</span>
                            </a>
                            <span class="movie-title">吹哨人</span>
                            <a href="javascript:;" class="movie-ticket-buy">预售</a>
                        </li>
                        <li>
                            <a href="javascript:;" class="movie-poster">
                                <img src="./imgs/poster/dayuezaidongji.jpg" alt="" class="poster">
                                <span class="movie-score">12月26日上映</span>
                            </a>
                            <span class="movie-title">大约在冬季</span>
                            <a href="javascript:;" class="movie-ticket-buy">预售</a>
                        </li>
                        <li>
                            <a href="javascript:;" class="movie-poster">
                                <img src="./imgs/poster/haishanggangqinshi.jpg" alt="" class="poster">
                                <span class="movie-score">12月26日上映</span>
                            </a>
                            <span class="movie-title">海上钢琴师</span>
                            <a href="javascript:;" class="movie-ticket-buy">预售</a>
                        </li>
                        <li>
                            <a href="javascript:;" class="movie-poster">
                                <img src="./imgs/poster/ruonengyuni.jpg" alt="" class="poster">
                                <span class="movie-score">12月26日上映</span>
                            </a>
                            <span class="movie-title">若能与你共乘海浪之上</span>
                            <a href="javascript:;" class="movie-ticket-buy">预售</a>
                        </li>
                        <li>
                            <a href="javascript:;" class="movie-poster">
                                <img src="./imgs/poster/tianhuo.jpg" alt="" class="poster">
                                <span class="movie-score">12月27日上映</span>
                            </a>
                            <span class="movie-title">天·火</span>
                            <a href="javascript:;" class="movie-ticket-buy">预售</a>
                        </li>
                        <li>
                            <a href="javascript:;" class="movie-poster">
                                <img src="./imgs/poster/yewen4.jpg" alt="" class="poster">
                                <span class="movie-score">12月28日上映</span>
                            </a>
                            <span class="movie-title">叶问4</span>
                            <a href="javascript:;" class="movie-ticket-buy">预售</a>
                        </li>
                        <li>
                            <a href="javascript:;" class="movie-poster">
                                <img src="./imgs/poster/yishengyouni.jpg" alt="" class="poster">
                                <span class="movie-score">12月28日上映</span>
                            </a>
                            <span class="movie-title">一生有你</span>
                            <a href="javascript:;" class="movie-ticket-buy">预售</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="aside">
                <div class="panel-header">
                    <span class="panel-title">备受期待</span>
                    <a href="javascript:;" class="panel-more">更多</a>
                </div>
                <div class="movie-rank">
                    <ul>
                        <li class="movie-rank-top1">
                            <a href="javascript:;">
                                <span class="movie-rank-num movie-rank-top3">1</span>
                                <img src="./imgs/poster/haishanggangqinshi.jpg" alt="">
                                <div>
                                    <p class="movie-rank-name">海上钢琴师</p>
                                    <span class="box-office">1500人想看</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num movie-rank-top3">2</span>
                                <p class="movie-rank-name">叶问4</p>
                                <span class="box-office">1400人想看</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num movie-rank-top3">3</span>
                                <p class="movie-rank-name">若能与你共乘海浪之上</p>
                                <span class="box-office">1000人想看</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num">4</span>
                                <p class="movie-rank-name">吹哨人</p>
                                <span class="box-office">900人想看</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num">5</span>
                                <p class="movie-rank-name">大约在冬季</p>
                                <span class="box-office">800人想看</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num">6</span>
                                <p class="movie-rank-name">吹哨人</p>
                                <span class="box-office">700人想看</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num">7</span>
                                <p class="movie-rank-name">天·火</p>
                                <span class="box-office">600人想看</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num">8</span>
                                <p class="movie-rank-name">一生有你</p>
                                <span class="box-office">550人想看</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <span class="movie-rank-num">9</span>
                                <p class="movie-rank-name">冰雪奇缘2</p>
                                <span class="box-office">450人想看</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<%--  底部导航条内容 分离到footer.jsp中  --%>
<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript" src="/js/main.js"></script>
<script type="text/javascript" src="/js/slidey.js"></script>
<script type="text/javascript">
    window.onload = function () {
        setPage("/index");
        initPublic();
        initScrollToTop();
        new initSlidey();
    };
</script>
</body>
</html>