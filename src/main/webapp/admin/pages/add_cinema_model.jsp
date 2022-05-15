<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022/5/15
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/5/5
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css">
    <%--jQuery需要在bootstrap.前面--%>
    <script src="/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.js"></script>

    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .form-inline .form-group .btn{
            outline: none;
        }

        .table{
            text-align: center;
            margin-top: 10px;
        }
        .alert{
            display: none;
            width: auto;
            text-align: center;
            position: fixed;
            top: 20%;
            left:50%;

        }
        #delete_success,#add_success,#update_success{
            background:#19be6b;
            color: #ffff;
        }
        #delete_cancel,#add_cancel,#update_cancel{
            background: #ed4014;
            color: #ffffff;
        }
    </style>
</head>
<body>

<%--添加开始--%>
<div class="modal fade" id="addStudent" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="border-radius: 15px;">
            <div class="modal-header" style="background:#515a6e;border-radius:15px 15px 0 0;color: #ffffff">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" style="color: #ffffff">&times;</span>
                </button>
                <h4 style="text-align: center">添加</h4>
            </div>
            <div class="modal-body">
                <form  class="form-horizontal" id="myForm">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">学号:</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="addStudentId"  name="studentId" ><span id="msg"></span><br>
                        </div>
                    </div>
                    <p></p>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">姓名:</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="addStudentName" name="studentName" >
                        </div>
                    </div>
                    <p></p>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">学院:</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="addCollege" name="college" >
                        </div>
                    </div>
                    <p></p>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">专业:</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="addMajor" name="major" >
                        </div>
                    </div>
                    <p></p>

                    <div class="form-group">
                        <label class="col-sm-4 control-label">班级:</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="addClassName" name="className" >
                        </div>
                    </div>
                    <p></p>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary"  id="add_ok" data-toggle="modal" data-target="#addStudent">确定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal" id="cancel_add">取消</button>
            </div>
        </div>
    </div>
</div>
<%--添加结束--%>

<%--提示框开始--%>
<div class="alert alert-success" id="delete_success" role="alert">
    <span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span>&nbsp;删除成功
</div>
<div class="alert alert-danger" id="delete_cancel" role="alert">
    <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>&nbsp;已取消删除
</div>
<div class="alert alert-success" id="add_success" role="alert">
    <span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span>&nbsp;添加成功
</div>
<div class="alert alert-danger" id="add_cancel" role="alert">
    <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>&nbsp;已取消添加
</div>
<div class="alert alert-success" id="update_success" role="alert">
    <span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span>&nbsp;修改成功
</div>
<div class="alert alert-danger" id="update_cancel" role="alert">
    <span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>&nbsp;已取消修改
</div>
<%--提示框结束--%>
</body>
<script>

    /*失去焦点交互数据*/
    $(function (){
        $("#addStudentId").blur(function (){ /*blur失去焦点*/
            var studentId = $("#addStudentId").val();
            if(studentId != ""){
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/student/selectSId",
                    data:{"studentId":studentId},
                    dataType:"json",
                    success:function (data){
                        if (data) {
                            $("#msg").text("学号可以用");
                            $("#addStudentId").css('borderColor','green');
                            $("#msg").css('color','green')

                        }
                        else{
                            $("#msg").text("学号已被占用");
                            $("#addStudentId").css('borderColor','red');
                            $("#msg").css('color','red')
                        }
                    }
                });
            }
            else{
                $("#msg").text("");
            }
        });
        $("#add_ok").click(function (){
            var studentId = $("#addStudentId").val();
            var studentName = $("#addStudentName").val();
            var college = $("#addCollege").val();
            var major = $("#addMajor").val();
            var className = $("#addClassName").val();
            var m = $("#msg").text();
            if (m == "学号可以用"){
                $.ajax({
                    type: "post",
                    url: "${pageContext.request.contextPath}/student/addStudent",
                    data:JSON.stringify({
                        "studentId":studentId,
                        "studentName":studentName,
                        "college":college,
                        "major":major,
                        "className":className}),
                    dataType: "text",
                    contentType: "application/json;charset=utf-8",
                    success:function (msg){
                        if(msg == "success"){
                            $("#addStudentId").val("");
                            $("#addStudentName").val("");
                            $("#addCollege").val("");
                            $("#addMajor").val("");
                            $("#addClassName").val("");
                            $("#msg").val("");
                            select();
                            $("#add_success").show().delay(1500).fadeOut();
                        }
                    }
                });
            }
            else if(m == "学号已被占用"){
                $("#addStudentId").val("");
                $("#addStudentName").val("");
                $("#addCollege").val("");
                $("#addMajor").val("");
                $("#addClassName").val("");
                $("#msg").text("");
            }

        });
        $("#cancel_add").click(function (){
            $("#addStudentId").val("");
            $("#addStudentName").val("");
            $("#addCollege").val("");
            $("#addMajor").val("");
            $("#addClassName").val("");
            $("#msg").text("");
            $("#add_cancel").show().delay(1500).fadeOut();
        })
    });
    /*添加结束*/

</script>
</html>

