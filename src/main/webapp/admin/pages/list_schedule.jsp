<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

</head>

<body class="hold-transition skin-red-light sidebar-mini">
    <!-- 内容区域 -->
    <!-- @@master = admin-layout.html-->
    <!-- @@block = content -->

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                场次管理
                <small>场次列表</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">场次管理</a></li>
                <li class="active">场次列表</li>
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
                                <th>ID</th>
                                <th>所属影院</th>
                                <th>所属影片</th>
                                <th>放映时间</th>
                                <th>售价</th>
                                <th>场次状态</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${scheduleList}" var="schedule">
                            <tr>
                                <td>${schedule.scheduleId}</td>
                                <td>${schedule.scheduleCinema.cinemaName}</td>
                                <td>${schedule.scheduleFilm.filmName}</td>
                                <td>
                                    <fmt:formatDate value="${schedule.startTime}" pattern="yyyy-MM-dd HH:mm" />
                                </td>
                                <td>${schedule.price}</td>
                                <!-- 0-上架  1-下架 -->
                                <td style="vertical-align:middle;">
                                    <c:if test="${schedule.scheduleStatus == 1}">上架</c:if>
                                    <c:if test="${schedule.scheduleStatus == 0}">下架</c:if>
                                </td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-blue btn-xs" data-toggle="modal"
                                            data-target="#editScheduleModal" onclick="showUpdateDlg(${schedule.scheduleId})">编辑</button>
                                    <c:if test="${schedule.scheduleStatus == 0}">
                                        <button type="button" class="btn bg-olive btn-xs"
                                                onclick="showDeleteDlg(${schedule.scheduleId},${schedule.scheduleStatus},'${schedule.scheduleCinema.cinemaName}','${schedule.scheduleFilm.filmName}')">
                                            上架
                                        </button>
                                    </c:if>
                                    <c:if test="${schedule.scheduleStatus == 1}">
                                        <button type="button" class="btn bg-red btn-xs"
                                                onclick="showDeleteDlg(${schedule.scheduleId},${schedule.scheduleStatus},'${schedule.scheduleCinema.cinemaName}','${schedule.scheduleFilm.filmName}')">
                                            下架
                                        </button>
                                    </c:if>
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

        <!-- 编辑场次的模块框 -->
        <div class="modal fade" id="editScheduleModal"  tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span></button>
                        <h4 class="modal-title" id="exampleModalLabel">编辑场次</h4>
                    </div>
                    <div class="modal-body">
                        <form id="editSchedule" class="form-horizontal">
                            <input type="hidden" id="scheduleId" name="scheduleId">
                            <div class="form-group">
                                <label for="startTime" class="col-sm-2 control-label">放映时间</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="startTime" name="startTime">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="language" class="col-sm-2 control-label">语言版本</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="language" name="language">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="price" class="col-sm-2 control-label">售价</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="price" name="price">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default pull-left" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" onclick="editSchedule()">保存</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

        <!-- 下架场次的模块框 -->
        <div class="modal modal-danger fade" id="deleteScheduleModal"  tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span></button>
                        <h4 class="modal-title">下架场次</h4>
                    </div>
                    <div class="modal-body">
                        <p id="deleteMessage"></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-outline" onclick="deleteSchedule()">确定</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

        <!-- 上架场次的模块框 -->
        <div class="modal modal-success fade" id="shelvesScheduleModal"  tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span></button>
                        <h4 class="modal-title">上架场次</h4>
                    </div>
                    <div class="modal-body">
                        <p id="shelvesMessage"></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-outline" onclick="deleteSchedule()">确定</button>
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

    //查询id对应的场次信息，并将场次信息回显到编辑的窗口中
    function showUpdateDlg(id) {

        var url =  "/getScheduleById?scheduleId="+id;
        $.get(url, function (response) {
            //将获取的场次信息回显到编辑的窗口中
            $("#scheduleId").val(response.data.scheduleId);
            $("#startTime").val(response.data.startTime);
            $("#language").val(response.data.language);
            $("#price").val(response.data.price);
        })
    }

    //点击编辑的保存按钮，提交更改后的场次信息
    function editSchedule(){
        var url ="/updateSchedule";
        $.post(url, $("#editSchedule").serialize(), function (response) {

            if (response.success == true){
                $('.alert').html(response.message).addClass('alert-success').show().delay(1500).fadeOut();
                $('#editScheduleModal').modal('hide')
                setTimeout(function() {
                    window.location.reload();
                }, 1800);
            }else {
                $('.alert').html(response.message).addClass('alert-danger').show().delay(1500).fadeOut();
            }
        })
    }

    var deleteId = 0;
    //查询id对应的场次信息，并将场次信息回显到上架、下架的窗口中
    function showDeleteDlg(id,status,cinemaName,fileName){
        //将获取的场次信息回显到指定的窗口中
        deleteId = id;
        if(status == 0){
            $("#shelvesMessage").text("您确定要上架"+cinemaName+"影院下"+fileName+"的场次信息吗?");
            $('#shelvesScheduleModal').modal('show');
        }else{
            $("#deleteMessage").text("您确定要下架"+cinemaName+"影院下"+fileName+"的场次信息吗?");
            $('#deleteScheduleModal').modal('show');
        }
    }

    //点击上、下架的确定按钮，提交更改后的场次信息
    function deleteSchedule(){
        var url ="/deleteSchedule?scheduleId="+deleteId;
        $.post(url, function (response) {

            if (response.success == true){
                $('.alert').html(response.message).addClass('alert-success').show().delay(1500).fadeOut();
                $('#deleteScheduleModal').modal('hide')
                $('#shelvesScheduleModal').modal('hide')
                setTimeout(function() {
                    window.location.reload();
                }, 1800);
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
            'order' : [5,'asc']
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

    $('#startTime').datetimepicker({
        format:'yyyy-mm-dd hh:ii:ss',
        theme: 'dark'
    });
</script>
</body>

</html>