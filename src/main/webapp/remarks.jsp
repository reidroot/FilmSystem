<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022/5/30
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>评论记录</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" type="text/css" href="./css/index.css">
    <link rel="stylesheet" href="css/base.css" type="text/css" />
    <link rel="stylesheet" href="css/common-less(1).css" type="text/css" />
    <link rel="stylesheet" href="css/moco.min.css" type="text/css" />
    <link rel="stylesheet" href="css/common-less.css" type="text/css" />
    <link rel="stylesheet" href="css/profile-less.css" type="text/css" />
    <style>
        .table{display:table;border-collapse:collapse;border:1px solid #ccc;margin:auto;width:95%}
        .table-caption{display:table-caption;margin:0;padding:0;font-size:16px;}
        .table-column-group{display:table-column-group;}
        .table-column{display:table-column;width:150px;}
        .table-row-group{display:table-row-group;}
        .table-row{display:table-row;}
        .table-row-group .table-row:hover,.table-footer-group .table-row:hover{background:#f6f6f6;}
        .table-cell{display:table-cell;padding:5px;border:1px solid #ccc;}
        .table-header-group{display:table-header-group;background:#eee;font-weight:bold;}
        .table-footer-group{display:table-footer-group;}
        .page_c{font-size:25px}
    </style>
</head>
<body>
<div id="main">
    <%--  头部导航条内容 分离到header.jsp中  --%>
    <jsp:include page="header.jsp"></jsp:include>

    <div class="page-settings">
        <div class="top">

        </div>
        <div class="setting pb10">
            <div class="nav-tabs pa">

                <a href="personal.jsp" class="baseinfo fl">基本信息</a>
                <a href="/loadOrderByUserId?userId=${sessionScope.USER_SEESION.userId}" class="countinfo fl">购票记录</a>
                <h class="countinfo fl active">评论记录</h>
                <div class="cb"></div>
            </div>
            <div class="contentBox">
                <div class="table" align="center">
                    <div class="table-column-group">
                        <div class="table-column"></div>
                        <div class="table-column"></div>
                        <div class="table-column"></div>
                    </div>
                    <div class="table-header-group">
                        <ul class="table-row">
                            <li class="table-cell">影片</li>
                            <li class="table-cell" >评分</li>
                            <li class="table-cell">评论时间</li>
                            <li class="table-cell">评论内容</li>
                        </ul>
                    </div>
                    <div class="table-row-group">
                        <c:forEach items="${userRemarks}" var="remark">
                            <ul class="table-row">
                                <li class="table-cell">${remark.remarkFilm.filmName}</li>
                                <li class="table-cell">${remark.score}</li>
                                <li class="table-cell"><fmt:formatDate value="${remark.remarkTime}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
                                <li class="table-cell">${remark.context}</li>
                            </ul>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>
<!-- 提示框 -->
<div class="alert"></div>
<%--  底部导航条内容 分离到footer.jsp中  --%>
<jsp:include page="footer.jsp"></jsp:include>
<script src="/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script>

    function updateUser() {
        var formData = new FormData(document.getElementById("personalForm"));

        $.ajax({
            url:"/updateUser",
            type: "POST",
            data: formData,
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            success: function(response){
                if (response.success == true){
                    $('.alert').html(response.message).addClass('alert-success').show().delay(1500).fadeOut();
                    setTimeout(function() {
                        window.location.reload();
                    }, 1500);
                } else{
                    $('.alert').html(response.message).addClass('alert-danger').show().delay(1500).fadeOut();
                }
            },
            error: function (response) {
                $('.alert').html(response.message).addClass('alert-danger').show().delay(1500).fadeOut();
            }
        })

    }

    //回显图片
    function previewImage(file) {
        var img = document.getElementById('iconImg');

        if (file.files && file.files[0]) {
            var reader = new FileReader();

            reader.onload = function(evt) {
                img.src = evt.target.result;
                console.log("read ok!" + evt.target.result);

            }
            console.log("start to read");
            reader.readAsDataURL(file.files[0]);
        } else {
            img.src = "/files/icon/default.png";
        }
    }
</script>
</body>
</html>
