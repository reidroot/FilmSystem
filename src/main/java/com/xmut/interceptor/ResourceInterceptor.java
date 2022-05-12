package com.xmut.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResourceInterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        //如果管理员已登录直接放行
        Object admin = request.getSession().getAttribute("ADMIN_SESSION");
        if (admin != null)
            return true;

        //如果没有登录，我们判断是否访问的是登录相关的功能，若是就放行
        String requestURI = request.getRequestURI();
        if (requestURI.indexOf("login") > 0){
            return  true;
        }

        //若不是登录相关的功能，跳转到登录页面
        request.setAttribute("msg", "请先登录！");
        request.getRequestDispatcher("/admin/pages/admin_login.jsp").forward(request, response);

        return false;
    }
}
