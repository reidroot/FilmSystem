<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022/5/5
  Time: 8:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Film后台管理系统</title>
    <meta name="description" content="Film后台管理系统">
    <meta name="keywords" content="Film后台管理系统">

    <%--  引用文件  --%>
    <%@ include file="head.jsp"%>
    <style>
        td {text-overflow: ellipsis; white-space: nowrap; overflow: hidden;}
        table {table-layout:fixed;}
    </style>
</head>

<body class="hold-transition skin-red-light sidebar-mini">
    <!-- 内容区域 -->
    <!-- @@master = admin-layout.html-->
    <!-- @@block = content -->

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                评论管理
                <small>评论列表</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">评论管理</a></li>
                <li class="active">评论列表</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <!-- .box-body -->
            <div class="box box-danger">
                <div class="box-header with-border">
                    <h3 class="box-title">列表</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th style="width: 40px">ID</th>
                                <th style="width: 220px">影片</th>
                                <th style="width: 320px">评论内容</th>
                                <th style="width: 200px">评论时间</th>
                                <th style="width: 40px">评分</th>
                                <th>用户</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${remarkList}" var="remark">
                                <tr>
                                    <td>${remark.remarkId}</td>
                                    <td>${remark.remarkFilm.filmName}</td>
                                    <td>${remark.context}</td>
                                    <td>
                                        <fmt:formatDate value="${remark.remarkTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                    </td>
                                    <td>${remark.score}</td>
                                    <td>
                                        ${remark.remarkUser.userName}
                                    </td>
                                    <td class="text-center">
                                        <button type="button" class="btn bg-red btn-xs"
                                                onclick="showDeleteDlg(${remark.remarkId},'${remark.remarkUser.userName}')">删除</button>
                                    </td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                        <!--数据列表/-->

                    </div>
                    <!-- 数据表格 /-->


                </div>
                <!-- /.box-body -->

            </div>

        </section>
        <!-- 正文区域 /-->

        <!-- 提示框 -->
        <div class="alert"></div>

        <!-- 删除评论的模块框 -->
        <div class="modal modal-danger fade" id="deleteRemarkModal"  tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span></button>
                        <h4 class="modal-title">删除评论</h4>
                    </div>
                    <div class="modal-body">
                        <p id="deleteMessage"></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-outline" onclick="deleteRemark()">确定</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>


<script src="/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="/admin/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="/admin/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="/admin/plugins/raphael/raphael-min.js"></script>
<script src="/admin/plugins/morris/morris.min.js"></script>
<script src="/admin/plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/admin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="/admin/plugins/knob/jquery.knob.js"></script>
<script src="/admin/plugins/daterangepicker/moment.min.js"></script>
<script src="/admin/plugins/daterangepicker/daterangepicker.js"></script>
<script src="/admin/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="/admin/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="/admin/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="/admin/plugins/fastclick/fastclick.js"></script>
<script src="/admin/plugins/iCheck/icheck.min.js"></script>
<script src="/admin/plugins/adminLTE/js/app.min.js"></script>
<script src="/admin/plugins/treeTable/jquery.treetable.js"></script>
<script src="/admin/plugins/select2/select2.full.min.js"></script>
<script src="/admin/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="/admin/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="/admin/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="/admin/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="/admin/plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="/admin/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="/admin/plugins/ckeditor/ckeditor.js"></script>
<script src="/admin/plugins/input-mask/jquery.inputmask.js"></script>
<script src="/admin/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="/admin/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/admin/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="/admin/plugins/chartjs/Chart.min.js"></script>
<script src="/admin/plugins/flot/jquery.flot.min.js"></script>
<script src="/admin/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="/admin/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="/admin/plugins/flot/jquery.flot.categories.min.js"></script>
<script src="/admin/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="/admin/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script src="/admin/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="/admin/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script>

    var deleteId = 0;

    //显示删除模态窗
    function showDeleteDlg(id,userName){
        deleteId = id;

        $("#deleteMessage").text("您确定要删除["+userName+"]用户的评论信息吗?");
        $("#deleteRemarkModal").modal('show');
    }

    function deleteRemark(){
        var url = "/deleteRemark?remarkId="+deleteId;

        $.post(url, function (response) {

            if (response.success == true){
                $('.alert').html(response.message).addClass('alert-success').show().delay(1500).fadeOut();
                $('#deleteRemarkModal').modal('hide')
                setTimeout(function() {
                    window.location.reload();
                }, 1500);
            }else {
                $('.alert').html(response.message).addClass('alert-danger').show().delay(1500).fadeOut();
            }
        })
    }

    $(document).ready(function() {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });


    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    // 设置激活表格
    $(function () {
        $("#dataList").DataTable({
        });
    });

    $(document).ready(function() {

        // 激活导航位置
        setSidebarActive("admin-datalist");

        // 列表按钮
        $("#dataList td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
        // 全选操作
        $("#selall").click(function() {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });
    });
</script>
</body>

</html>