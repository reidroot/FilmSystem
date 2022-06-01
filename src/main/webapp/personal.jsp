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
    <title>Title</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" type="text/css" href="./css/index.css">
    <link rel="stylesheet" href="css/base.css" type="text/css" />
    <link rel="stylesheet" href="css/common-less(1).css" type="text/css" />
    <link rel="stylesheet" href="css/moco.min.css" type="text/css" />
    <link rel="stylesheet" href="css/common-less.css" type="text/css" />
    <link rel="stylesheet" href="css/profile-less.css" type="text/css" />
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
                <h class="baseinfo fl active">基本信息</h>
                <a href="http://www.baidu.com" class="countinfo fl">购票记录</a>
                <a href="http://www.baidu.com" class="countinfo fl">评论记录</a>
                <div class="cb"></div>
            </div>
            <div class="contentBox">
                <div class="formBox">
                    <div id="setting-profile" class="setting-wrap setting-profile">
                     <form id="personalForm" >
                         <input type="hidden" id="userId" name="userId" value="${sessionScope.USER_SEESION.userId}">
                        <div class="wlfg-wrap clearfix ">
                            <label class="label-name" >用户头像：</label>
                            <div class="rlf-group">
                                <img class="fl avator-img" id="iconImg" src="${sessionScope.USER_SEESION.icon}" width="180" height="180">
                                <input type="file" name="iconFile" id="iconFile"  onchange="previewImage(this)" style="margin-top: 10px">
                                <div class="cb"></div>
                                <p class="rlf-tip-wrap errorHint color-red" ></p>
                            </div>
                        </div>

                         <div class="wlfg-wrap clearfix" style="margin-bottom: 10px">
                             <label class="label-name">用户邮箱：</label>
                             <div class="rlf-group" style="margin-top: 10px">
                                ${sessionScope.USER_SEESION.userEmail}
                             </div>
                         </div>

                        <div class="wlfg-wrap clearfix">
                            <label class="label-name" for="userName" >用户昵称：</label>
                            <div class="rlf-group" style="margin-top: 5px">
                                <input type="text" name="userName" id="userName"  autocomplete="off"  data-validate="require-nick"  class="moco-form-control" value="${sessionScope.USER_SEESION.userName}" placeholder="请输入昵称"/>
                                <p class="rlf-tip-wrap errorHint color-red" ></p>
                            </div>
                        </div>

                         <div class="wlfg-wrap clearfix">
                             <label class="label-name" for="userPhone" >用户电话：</label>
                             <div class="rlf-group" style="margin-top: 5px">
                                 <input type="text" name="userPhone" id="userPhone"  autocomplete="off"  data-validate="require-nick"  class="moco-form-control" value="${sessionScope.USER_SEESION.userPhone}" placeholder="请输入电话号码"/>
                                 <p class="rlf-tip-wrap errorHint color-red" ></p>
                             </div>
                         </div>

                         <div class="wlfg-wrap clearfix">
                            <label class="label-name" for="preference">个性签名：</label>
                            <div class="rlf-group">
                                <div class="pr">
                                    <textarea name="preference"  id="preference"  rows="5" class="noresize js-sign moco-form-control">
                                        ${sessionScope.USER_SEESION.preference}
                                    </textarea>
                                </div>
                            </div>
                        </div>

                        <div class="wlfg-wrap clearfix">
                            <label class="label-name" for="profile-submit"></label>
                            <div class="rlf-group">
                                <span onclick="updateUser()" id="profile-submit"  hidefocus="true"  aria-role="button" class="rlf-btn-green btn-block profile-btn" style="margin-top: 25px">保存</span>
                            </div>
                        </div>
                        </form>
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
