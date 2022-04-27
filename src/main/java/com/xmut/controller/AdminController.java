package com.xmut.controller;

import com.xmut.domain.Admin;
import com.xmut.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/test")
    public ModelAndView findAdminById(Long adminId){
        Admin admin = adminService.findAdminById(1);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin.jsp");
        modelAndView.addObject("admin",admin);

        return modelAndView;
    }
}
