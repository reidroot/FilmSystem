package com.xmut.controller;

import com.xmut.domain.Admin;
import com.xmut.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
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

        if (dbAdmin == null){
            //登录失败
            request.setAttribute("msg", "登录失败，用户或密码错误！");
            return "forward:pages/admin_login.jsp";
        }else{
            request.getSession().setAttribute("ADMIN_SESSION", dbAdmin);

            //最后登录时间
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            String lastTime = sdf.format(new Date());
            request.getSession().setAttribute("LAST_LOGIN_TIME", lastTime);

            return "redirect:pages/admin_index.jsp";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){

        HttpSession session = request.getSession();
        //销毁Session
        session.invalidate();

        return "redirect:pages/admin_login.jsp";
    }
}
