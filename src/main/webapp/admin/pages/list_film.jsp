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
                影片管理
                <small>影片列表</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">影片管理</a></li>
                <li class="active">影片列表</li>
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

                        <%-- 数据列表 --%>
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>海报</th>
                                <th>影片名称</th>
                                <th>导演</th>
                                <th>类型</th>
                                <th>上映时间</th>
                                <th>影片状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${filmList}" var="film">
                                <tr>
                                    <td style="vertical-align:middle;">${film.filmId}</td>
                                    <td style="vertical-align:middle;"><img src="${film.poster}" width="50px" height="70px"/></td>
                                    <td style="vertical-align:middle;">${film.filmName}</td>
                                    <td style="vertical-align:middle;">${film.director}</td>
                                    <td style="vertical-align:middle;">${film.tag}</td>
                                    <td style="vertical-align:middle;">
                                        <fmt:formatDate value="${film.releaseTime}" pattern="yyyy-MM-dd" />
                                    </td>
                                    <!-- 0-上架  1-下架 -->
                                    <td style="vertical-align:middle;">
                                        <c:if test="${film.filmStatus == 1}">上架</c:if>
                                        <c:if test="${film.filmStatus == 0}">下架</c:if>
                                    </td>
                                    <td class="text-center" style="vertical-align:middle;">
                                        <button type="button" class="btn bg-blue btn-xs" data-toggle="modal"
                                                data-target="#editFilmModal" onclick="showUpdateDlg(${film.filmId})">
                                            编辑
                                        </button>
                                        <c:if test="${film.filmStatus == 0}">
                                            <button type="button" class="btn bg-olive btn-xs"
                                                    onclick="showDeleteDlg(${film.filmId},${film.filmStatus},'${film.filmName}')">
                                                上架
                                            </button>
                                        </c:if>
                                        <c:if test="${film.filmStatus == 1}">
                                            <button type="button" class="btn bg-red btn-xs"
                                                    onclick="showDeleteDlg(${film.filmId},${film.filmStatus},'${film.filmName}')">
                                                下架
                                            </button>
                                        </c:if>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>

                        </table>

                    </div>
                    <!-- 数据表格 /-->


                </div>
                <!-- /.box-body -->

            </div>

        </section>
        <!-- 正文区域 /-->

        <!-- 提示框 -->
        <div class="alert"></div>

        <!-- 编辑影院的模块框 -->
        <div class="modal fade" id="editFilmModal"  tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span></button>
                        <h4 class="modal-title" id="exampleModalLabel">编辑影片</h4>
                    </div>
                    <div class="modal-body">
                        <form id="editFilm" class="form-horizontal">
                            <input type="hidden" id="filmId" name="filmId">
                            <div class="form-group">
                                <label for="filmName" class="col-sm-2 control-label">影片名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="filmName" name="filmName">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="director" class="col-sm-2 control-label">导演</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="director" name="director">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="actor" class="col-sm-2 control-label">主演</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="actor" name="actor">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tag" class="col-sm-2 control-label">类型</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="tag" name="tag">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="nation" class="col-sm-2 control-label">制片国家</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="nation" name="nation">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="releaseTime" class="col-sm-2 control-label">上映时间</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="releaseTime" name="releaseTime">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="runningTime" class="col-sm-2 control-label">片长(分钟)</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="runningTime" name="runningTime">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="posterFile" class="col-sm-2 control-label">海报</label>
                                <div class="col-sm-10">
                                    <img src="/files/no-pic.jpg" id="picImg" width="115px" height="161px"
                                         class="py-1" style="margin-bottom: 5px"><br>
                                    <input type="file" name="posterFile" id="posterFile" onchange="previewImage(this)">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="description" class="col-sm-2 control-label">影片简介</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" rows="4" name="description" id="description" placeholder="请输入影片简介..."></textarea>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default pull-left" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" onclick="editFilm()">保存</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

        <!-- 下架场次的模块框 -->
        <div class="modal modal-danger fade" id="deleteFilmModal"  tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span></button>
                        <h4 class="modal-title">下架影片</h4>
                    </div>
                    <div class="modal-body">
                        <p id="deleteMessage"></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-outline" onclick="deleteFilm()">确定</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

        <!-- 上架场次的模块框 -->
        <div class="modal modal-success fade" id="shelvesFilmModal"  tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span></button>
                        <h4 class="modal-title">上映影片</h4>
                    </div>
                    <div class="modal-body">
                        <p id="shelvesMessage"></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-outline" onclick="deleteFilm()">确定</button>
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

    var oldPoster;
    var deleteId = 0;

    //查询id对应的影片信息，并将影片信息回显到编辑的窗口中
    function showUpdateDlg(id){
        var url = "/getFilmById?filmId="+id;
        $.get(url, function (response) {
            //将获取到的影片信息回显到编辑的窗口中
            $("#filmId").val(response.data.filmId);
            $("#filmName").val(response.data.filmName);
            $("#director").val(response.data.director);
            $("#actor").val(response.data.actor);
            $("#tag").val(response.data.tag);
            $("#nation").val(response.data.nation);
            $("#releaseTime").val(response.data.releaseTime);
            $("#runningTime").val(response.data.runningTime);
            $("#description").val(response.data.description);

            var img = document.getElementById('picImg');
            img.src = response.data.poster;
            oldPoster = response.data.poster;
        })
    }

    //点击编辑的保存按钮，提交修改后的影片信息
    function editFilm(){
        var formData = new FormData(document.getElementById("editFilm"));
        $.ajax({
            url:"/updateFilm",
            type: "POST",
            data: formData,
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            success: function(response){
                if (response.success == true)
                    $('.alert').html(response.message).addClass('alert-success').show().delay(1500).fadeOut();
                $('#editFilmModal').modal('hide')
                setTimeout(function() {
                    window.location.reload();
                }, 1500);
            },
            error: function (response) {
                $('.alert').html(response.message).addClass('alert-danger').show().delay(1500).fadeOut();
            }
        })
    }

    //显示模态窗，并将影片信息回显到上映、下架的窗口中
    function showDeleteDlg(id,status,fileName){
        //将获取的影片信息回显到指定的窗口中
        deleteId = id;
        if(status == 0){
            $("#shelvesMessage").text("您确定要上映"+fileName+"吗?");
            $('#shelvesFilmModal').modal('show');
        }else{
            $("#deleteMessage").text("您确定要下架"+fileName+"吗?");
            $('#deleteFilmModal').modal('show');
        }
    }

    //点击上映、下架的确定按钮，实现上映、下架功能
    function deleteFilm(){
        var url ="/deleteFilm?filmId="+deleteId;
        $.post(url, function (response) {

            if (response.success == true){
                $('.alert').html(response.message).addClass('alert-success').show().delay(1500).fadeOut();
                $('#deleteFilmModal').modal('hide')
                $('#shelvesFilmModal').modal('hide')
                setTimeout(function() {
                    window.location.reload();
                }, 1500);
            }else {
                $('.alert').html(response.message).addClass('alert-danger').show().delay(1500).fadeOut();
            }
        })
    }

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
            img.src = oldPoster;
        }
    }

    //时间控件
    $('#releaseTime').datepicker({
        format:'yyyy-mm-dd',
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