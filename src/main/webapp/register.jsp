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
    <title>注册 - 叮当电影</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" type="text/css" href="./css/register.css">
</head>
<body>

<%--  头部导航条内容 分离到header.jsp中  --%>
<jsp:include page="header.jsp"></jsp:include>

<div class="wrap">
    <div class="center-box">
        <div class="center-box-head">
            <h3 class="center-box-title">
                注册
                <span class="sign-switch">
                    已有账号？
                    <a href="login.jsp">立即登录</a>
                </span>
            </h3>
        </div>
        <form id="userForm" class="center-box-form">
            <div class="form-item">
                <i class="username-icon icon"></i>
                <input type="text" name="userName" id="userName" autocomplete="off" placeholder="用户名">
            </div>
            <div class="form-item">
                <i class="e-mail-icon icon"></i>
                <input type="text" name="userEmail" id="userEmail" autocomplete="off" placeholder="邮箱" onblur="checkUserEmail()">
            </div>
            <font id="emailMsg" size="2"></font>
            <div class="form-item">
                <i class="password-icon icon"></i>
                <input type="password" name="userPwd" id="userPwd" autocomplete="off" placeholder="密码">
            </div>
            <div class="form-item">
                <i class="re-password-icon icon"></i>
                <input type="password" name="re-userPwd" id="re-userPwd" autocomplete="off" placeholder="确认密码">
            </div>
            <button id="form-submit-btn" type="button" onclick="register()">注册</button>
        </form>
    </div>
</div>

<!-- 提示框 -->
<div class="alert"></div>

<%--  底部导航条内容 分离到footer.jsp中  --%>
<jsp:include page="footer.jsp"></jsp:include>
<script src="/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">

    var emailPass = 0;

    //检查邮箱是否被注册过
    function checkUserEmail(){
        var email = $("#userEmail").val()
        console.log(email)
        var url = "/checkUserByEmail?userEmail="+email

        $.get(url, function (response) {
            if (response.success == true){
                $("#emailMsg").text(response.message);
                $("#emailMsg").css("color","green");
                emailPass = 1;
            }else{
                $("#emailMsg").text(response.message);
                $("#emailMsg").css("color","red");
                emailPass = -1;
            }
        })
    }

    function register(){
        if(emailPass == 1){
            $.ajax({
                url:"/createUser",
                type:"POST",
                data:$("#userForm").serialize(),
                success:function (response) {
                    if (response.success == true){
                        $('.alert').html(response.message).addClass('alert-success').show().delay(1500).fadeOut();

                        setTimeout(function() {
                            window.location.href = "login.jsp";
                        }, 1500);
                    }else {
                        $('.alert').html(response.message).addClass('alert-danger').show().delay(1500).fadeOut();
                    }

                },
                error: function (response) {
                    $('.alert').html(response.message).addClass('alert-danger').show().delay(1500).fadeOut();
                }
            })
        }else{
            alert("请重新输入邮箱")
        }
    }

    window.onload = function () {
        setPage("register.jsp");
        initPublic();
    };
</script>

</body>
</html>