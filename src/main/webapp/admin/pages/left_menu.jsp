<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022/5/4
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% pageContext.setAttribute("path", request.getContextPath()); %>

<!--  左侧导航栏 -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="/admin/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>张猿猿</p>
                <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
            </div>
        </div>
        <!-- search form -->
        <!--<form action="#" method="get" class="sidebar-form">
    <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="搜索...">
        <span class="input-group-btn">
        <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
        </button>
      </span>
    </div>
</form>-->
        <!-- /.search form -->


        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">菜单</li>

            <li id="admin-index"><a href="admin_index.jsp"><i class="fa fa-dashboard"></i> <span>首页</span></a></li>

            <!-- 菜单 -->

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-users"></i> <span>用户管理</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">

                    <li id="list-user">
                        <a href="/loadPagedUsers" target="mainFrame">
                            <i class="fa fa-circle-o"></i> 用户列表
                        </a>
                    </li>

                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-film"></i> <span>影片管理</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">

                    <li id="add-film">
                        <a href="add_film.jsp" target="mainFrame">
                            <i class="fa fa-circle-o"></i> 新增影片
                        </a>
                    </li>

                    <li id="list-film">
                        <a href="/loadPagedFilms" target="mainFrame">
                            <i class="fa fa-circle-o"></i> 影片列表
                        </a>
                    </li>

                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-edit"></i> <span>评论管理</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">

                    <li id="list-remark">
                        <a href="/loadPagedRemarks" target="mainFrame">
                            <i class="fa fa-circle-o"></i> 评论列表
                        </a>
                    </li>

                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-laptop"></i> <span>影院管理</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">

                    <li id="add-cinema">
                        <a href="add_cinema.jsp" target="mainFrame">
                            <i class="fa fa-circle-o"></i> 新增影院
                        </a>
                    </li>

                    <li id="list-cinema">
                        <a href="/loadPagedCinemas" target="mainFrame">
                            <i class="fa fa-circle-o"></i> 影院列表
                        </a>
                    </li>

                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-cube"></i> <span>场次管理</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">

                    <li id="add-schedule">
                        <a href="/toCreateSchedule" target="mainFrame">
                            <i class="fa fa-circle-o"></i> 新增场次
                        </a>
                    </li>

                    <li id="list-schedule">
                        <a href="/loadPagedSchedules" target="mainFrame">
                            <i class="fa fa-circle-o"></i> 场次列表
                        </a>
                    </li>

                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-ticket"></i> <span>订单管理</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">

                    <li id="list-order">
                        <a href="/loadPagedOrders" target="mainFrame">
                            <i class="fa fa-circle-o"></i> 订单列表
                        </a>
                    </li>

                </ul>
            </li>

            <!-- 菜单 /-->
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
<!-- 导航侧栏 /-->