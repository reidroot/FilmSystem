<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Film后台管理系统</title>
    <meta name="description" content="Film后台管理系统">
    <meta name="keywords" content="Film后台管理系统">

    <%--  引用文件  --%>
    <%@ include file="head.jsp"%>

</head>

<body class="hold-transition skin-purple sidebar-mini">

<!-- 内容区域 -->
    <!-- 内容头部 -->
    <section class="content-header">
        <h1>
            场次管理
            <small>新增场次</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
            <li><a href="#">场次管理</a></li>
            <li class="active">新增场次</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
                <!-- general form elements -->
                <div class="box box-danger">
                    <div class="box-header with-border">
                        <h3 class="box-title">新增场次</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" id="cinema" action="/createSchedule" method="post">
                        <div class="box-body bg-light">
                            <div class="form-group">
                                <label>所属影院</label>
                                <select class="form-control" id="cinemaId" name="cinemaId">
                                    <option>请选择所属影院</option>
                                    <c:forEach items="${cinemaList}" var="cinema">
                                        <option value="${cinema.cinemaId}">${cinema.cinemaName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>所属影片</label>
                                <select class="form-control" id="filmId" name="filmId">
                                    <option>请选择所属影片</option>
                                    <c:forEach items="${filmList}" var="film">
                                        <option value="${film.filmId}">${film.filmName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>放映时间</label>
                                <input type="text" class="form-control" name="startTime" id="startTime" placeholder="请选择放映时间" autocomplete="off">

                            </div>
                            <div class="form-group">
                                <label>语言版本</label>
                                <input type="text" class="form-control" name="language" id="language" placeholder="请输入语言版本">
                            </div>
                            <div class="form-group">
                                <label>价格</label>
                                <input type="text" class="form-control" name="price" id="price" placeholder="请输入价格">
                            </div>
                            <div class="form-group">
                                <label>场次状态</label>
                                <select class="form-control" id="scheduleStatus" name="scheduleStatus">
                                    <option>请选择场次状态</option>
                                    <option value="0">下架</option>
                                    <option value="1">上映</option>
                                </select>
                            </div>
                        <!-- /.box-body onclick="submitCinema()" -->
                            <div class="box-footer">
                                <button type="submit" class="btn btn-danger">提&nbsp;&nbsp;交</button>
                                <button type="reset" class="btn btn-default  pull-right">取&nbsp;&nbsp;消</button>
                            </div>
                        </div>
                    </form>
                <!-- /.box -->
            </div>
            <!--/.col (left) -->
        </div>
        <!-- /.row -->
        </div>
    </section>
    <!-- /.content -->

<!-- 提示框开始 -->
<div class="alert"></div>
<!-- 提示框结束 -->

<%-- 提交信息ajax代码 --%>
<script type="text/javascript">

    function submitSchedule() {
        var cinemaName = $('#cinemaName').val();
        var address = $('#address').val();
        var telephone = $('#telephone').val();

        $.ajax({
            url: "/createSchedule",
            type: "post",
            data: JSON.stringify({
                startTime: startTime,
                language: language,
                price: price,
                seat:seat,
                scheduleStatus:scheduleStatus,
                cinemaId:cinemaId,
                filmId:filmId
            }),
            contentType: "application/json;charset=UTF-8",
            dataType: "text",
            success: function (response) {
                console.log("进入success")
                console.log(response)
                if (response == "success"){
                    $('#startTime').val();
                    $('#language').val("");
                    $('#price').val("");
                    $('#scheduleStatus').val("");
                    $('#scheduleStatus').val("");
                    $('#cinemaId').val("");
                    $('#filmId').val("");
                    $('.alert').html('新增成功！').addClass('alert-success').show().delay(500).fadeOut();
                }
            }
        });
    }
</script>

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
    //时间选择器
    $('#startTime').datetimepicker({
        format:'yyyy-mm-dd hh:ii:00',
        theme: 'dark'
    });

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


    // 激活导航位置
    setSidebarActive("form-general");
</script>
</body>

</html>