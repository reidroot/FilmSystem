<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                    <p class="description">${fn:substring(slide.slideFilm.description,0,99)}. . .</p>
                </li>
            </c:forEach>
        </ul>
        <div class="slidey-main">
            <a class="slidey-main-link"></a>
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
                    <span class="panel-title">正在热映</span>
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
                    <span class="panel-title">热评榜</span>
                    <a href="javascript:;" class="panel-more">更多</a>
                </div>
                <div class="movie-rank">
                    <ul>
                        <c:forEach items="${hotFilms}" var="hotFilm" varStatus="status">
                            <c:if test="${status.first == true}">
                                <li class="movie-rank-top1">
                                    <a href="/filmInfo?filmId=${hotFilm.filmId}">
                                        <span class="movie-rank-num movie-rank-top3">${status.index+1}</span>
                                        <img src="${hotFilm.poster}" alt="电影海报">
                                        <div>
                                            <p class="movie-rank-name">${hotFilm.filmName}</p>
                                            <span class="box-office">${hotFilm.remarkCount}条</span>
                                        </div>
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${status.first == false}">
                                <li>
                                    <a href="/filmInfo?filmId=${hotFilm.filmId}">
                                        <span class="movie-rank-num movie-rank-top3">${status.index+1}</span>
                                        <p class="movie-rank-name">${hotFilm.filmName}</p>
                                        <span class="box-office">${hotFilm.remarkCount}条</span>
                                    </a>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <div class="panel">
            <div class="main">
                <div class="panel-header">
                    <span class="panel-title">即将上映</span>
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
                    <span class="panel-title">好评榜</span>
                    <a href="javascript:;" class="panel-more">更多</a>
                </div>
                <div class="movie-rank">
                    <ul>
                        <c:forEach items="${goodFilms}" var="goodFilm" varStatus="status">
                            <c:if test="${status.first == true}">
                                <li class="movie-rank-top1">
                                    <a href="/filmInfo?filmId=${goodFilm.filmId}">
                                        <span class="movie-rank-num movie-rank-top3">${status.index+1}</span>
                                        <img src="${goodFilm.poster}" alt="电影海报">
                                        <div>
                                            <p class="movie-rank-name">${goodFilm.filmName}</p>
                                            <span class="box-office">${goodFilm.remarkScore}分</span>
                                        </div>
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${status.first == false}">
                                <li>
                                    <a href="/filmInfo?filmId=${goodFilm.filmId}">
                                        <span class="movie-rank-num movie-rank-top3">${status.index+1}</span>
                                        <p class="movie-rank-name">${goodFilm.filmName}</p>
                                        <span class="box-office">${goodFilm.remarkScore}分</span>
                                    </a>
                                </li>
                            </c:if>
                        </c:forEach>
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