package com.xmut.controller;

import com.xmut.entity.PageResult;
import com.xmut.domain.Schedule;
import com.xmut.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ScheduleController {

    @Autowired
    private ScheduleService scheduleService;

    @RequestMapping("/scheduleTest")
    @ResponseBody
    public String test(){

        Schedule schedule = scheduleService.getScheduleById((long)1);
        System.out.println(schedule);

        return schedule.toString();
    }

    @RequestMapping("/loadPagedSchedules")
    public ModelAndView loadPagedSchedules(){
        ModelAndView modelAndView = new ModelAndView();

        int pageNum = 1;
        int pageSize = 1;
        PageResult pageResult = scheduleService.loadPagedSchedules(pageNum, pageSize);
        modelAndView.addObject("pageResult", pageResult);
        modelAndView.setViewName("forward:admin/pages/list_schedule.jsp");

        return modelAndView;
    }
}
