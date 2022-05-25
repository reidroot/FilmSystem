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
            影院管理
            <small>新增影院</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
            <li><a href="#">影院管理</a></li>
            <li class="active">新增影院</li>
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
                        <h3 class="box-title">新增影院</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" id="cinema" action="/createCinema" method="post" enctype="multipart/form-data">
                        <div class="box-body bg-light">
                            <div class="form-group">
                                <label for="cinemaName">影院名称</label>
                                <input type="text" class="form-control" name="cinemaName" id="cinemaName" placeholder="请输入影院名称">
                            </div>
                            <div class="form-group">
                                <label for="address">影院地址</label>
                                <input type="text" class="form-control" name="address" id="address" placeholder="请输入影院地址">
                            </div>
                            <div class="form-group">
                                <label for="pictureFile">影院图片</label><br>
                                <img src="/files/no-pic.jpg" id="picImg" width="200" height="130"
                                     class="py-1" style="margin-bottom: 5px"><br>
                                <input type="file" name="pictureFile" id="pictureFile"  onchange="previewImage(this)">
                            </div>
                            <div class="form-group">
                                <label for="telephone">联系电话</label>
                                <input type="text" class="form-control" name="telephone" id="telephone" placeholder="请输入联系电话">
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
    $(document).ready(function() {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });

    //回显图片
    function previewImage(file) {
        var img = document.getElementById('picImg');

        if (file.files && file.files[0]) {
            var reader = new FileReader();

            reader.onload = function(evt) {
                img.src = evt.target.result;
                console.log("read ok!" + evt.target.result);

            }
            console.log("start to read");
            reader.readAsDataURL(file.files[0]);
        } else {
            img.src = "/files/no-pic.jpg";
        }
    }

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