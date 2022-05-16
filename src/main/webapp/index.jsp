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
<header class="header">
    <div class="container">
        <!--logo-->
        <a href="index.jsp" class="logo"></a>
        <!--导航标签-->
        <div class="nav">
            <ul class="navbar">
                <li><a href="index.jsp" class="active">首页</a></li>
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

<div class="container">
    <div class="slidey">
        <ul id="slidey-content" style="display: none">
            <li>
                <img src="imgs/slideposter/Frozen2.jpg" alt="">
                <p class="title">冰雪奇缘2</p>
                <p class="description">为什么艾莎一出生就带着控制冰雪的能力？这个答案一致困扰着她，也威胁着王国的安全。 她将和安娜、克斯托夫、雪宝和驯鹿斯文展开一场危险但非凡的旅程…</p>
            </li>
            <li>
                <img src="imgs/slideposter/ifseawave.jpg" alt="">
                <p class="title">若能与你共乘海浪之上</p>
                <p class="description">青年消防员雏罂粟港和爱好冲浪的向水日菜子相遇并迅速展开热恋。看似命中注定的这对恋人，
                    却不幸遭遇生死别离。无法接受港已经离世的雏子，某天突然发现，只要唱起属于两个人的那首歌，港就会从水中出现…</p>
            </li>
            <li>
                <img src="imgs/slideposter/skyfire.jpg" alt="">
                <p class="title">天·火</p>
                <p class="description">火山喷发了，这些人的命运纠结在一起。为了看见明天的太阳，他们必须与过去和解， 合力为自己也为众生在绝境中寻找一条生路。
                    这是一个关于爱与勇气、选择与放弃、自救与他救的中国式英雄的故事…</p>
            </li>
            <li>
                <img src="imgs/slideposter/yewen4.jpg" alt="">
                <p class="title">叶问4</p>
                <p class="description">因故来到美国唐人街的叶问，意外卷入一场当地军方势力与华人武馆的纠纷，面对日益猖狂的
                    民族歧视与压迫，叶问挺身而出，在美国海军陆战队军营拼死一战，以正宗咏春，向世界证明了中国功夫…</p>
            </li>
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
                        <!--
                        <li>
                            <a href="movie.jsp" class="movie-poster">
                                <img src="./imgs/poster/bingxueqiyuan2.jpg" alt="" class="poster">
                                <span class="movie-score">8.0</span>
                            </a>
                            <span class="movie-title">冰雪奇缘2</span>
                            <a href="movie.jsp" class="movie-ticket-buy">选座购票</a>
                        </li>
                        -->
                        <c:forEach items="${filmList}" var="film" begin="0" end="7">
                            <li>
                                <a href="movie.jsp" class="movie-poster">
                                    <img src="${film.poster}" alt="" class="poster">
                                    <span class="movie-score">8.5</span>
                                </a>
                                <span class="movie-title">${film.filmName}</span>
                                <a href="movie.jsp" class="movie-ticket-buy">选座购票</a>
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

<script type="text/javascript" src="/js/main.js"></script>
<script type="text/javascript" src="/js/slidey.js"></script>
<script type="text/javascript">
    window.onload = function () {
        setPage("index.jsp");
        initPublic();
        initScrollToTop();
        new initSlidey();
    };
</script>
</body>
</html>