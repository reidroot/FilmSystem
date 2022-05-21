package com.xmut.controller;

import com.xmut.domain.Admin;
import com.xmut.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    // 测试
    @RequestMapping("/test")
    public ModelAndView findAdminById(Long adminId){
        Admin admin = adminService.getAdminById(1);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin");
        modelAndView.addObject("admin",admin);
        List<Admin> adminList = adminService.loadAllAdmins();
        for (Admin a: adminList) {
            System.out.println(a);
        }
        return modelAndView;
    }

    @RequestMapping("/toIndexPage")
    public String toIndexPage(){
        return "redirect:pages/admin_index.jsp";
    }

    @RequestMapping("/login")
    public String login(Admin admin, HttpServletRequest request){

        //调用Service
        Admin dbAdmin = adminService.login(admin);
        System.out.println(dbAdmin);
        if (dbAdmin == null){
            //登录失败
            request.setAttribute("msg", "登录失败，用户或密码错误！");
            return "forward:pages/admin_login.jsp";
        }else{
            request.getSession().setAttribute("ADMIN_SESSION", dbAdmin);
            return "redirect:pages/admin_index.jsp";
        }
    }


}
