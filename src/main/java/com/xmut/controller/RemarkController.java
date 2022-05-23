package com.xmut.controller;

import com.xmut.domain.Remark;
import com.xmut.service.RemarkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class RemarkController {

    @Autowired
    private RemarkService remarkService;

    @RequestMapping("/remarkTest")
    @ResponseBody
    public String test(){
        System.out.println("---------------remark测试---------------");
        Remark remark = remarkService.getRemarkById((long)1);
        System.out.println(remark);

        List<Remark> remarkList = remarkService.loadAllRemarks();
        for (Remark r : remarkList) {
            System.out.println("===" + r);
        }
        return remark.toString();
    }

    @RequestMapping("/loadPagedRemarks")
    public ModelAndView loadPagedRemarks(){
        ModelAndView modelAndView = new ModelAndView();

        List<Remark> remarkList = remarkService.loadAllRemarks();

        modelAndView.addObject("remarkList", remarkList);
        modelAndView.setViewName("forward:admin/pages/list_remark.jsp");

        return modelAndView;
    }
}
