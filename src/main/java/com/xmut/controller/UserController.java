package com.xmut.controller;

import com.xmut.domain.User;
import com.xmut.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/loadPagedUsers")
    public ModelAndView loadPagedUsers(){
        ModelAndView modelAndView = new ModelAndView();

        List<User> userList = userService.loadAllUsers();

        modelAndView.addObject("userList", userList);
        modelAndView.setViewName("forward:admin/pages/list_user.jsp");

        return modelAndView;
    }

}
