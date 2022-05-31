package com.xmut.controller;

import com.xmut.domain.Cinema;
import com.xmut.domain.Film;
import com.xmut.domain.Schedule;
import com.xmut.entity.Result;
import com.xmut.service.CinemaService;
import com.xmut.service.FilmService;
import com.xmut.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ScheduleController {

    @Autowired
    private ScheduleService scheduleService;

    @Autowired
    private CinemaService cinemaService;

    @Autowired
    private FilmService filmService;

    //后台显示场次列表
    @RequestMapping("/loadPagedSchedules")
    public ModelAndView loadPagedSchedules(){
        ModelAndView modelAndView = new ModelAndView();

        List<Schedule> scheduleList = scheduleService.loadAllSchedule();

        modelAndView.addObject("scheduleList", scheduleList);
        modelAndView.setViewName("forward:admin/pages/list_schedule.jsp");

        return modelAndView;
    }


    //显示影院列表和影片列表到add_schedule.jsp
    @RequestMapping("/toCreateSchedule")
    public ModelAndView toCreateSchedule(){
        ModelAndView modelAndView = new ModelAndView();

        List<Cinema> cinemaList = cinemaService.loadAllCinemas();
        List<Film> filmList = filmService.loadAllFilms();

        modelAndView.addObject("filmList",filmList);
        modelAndView.addObject("cinemaList",cinemaList);
        modelAndView.setViewName("forward:/admin/pages/add_schedule.jsp");

        return modelAndView;
    }

    //新增场次
    @RequestMapping("/createSchedule")
    public ModelAndView createSchedule(Schedule schedule) {
        ModelAndView modelAndView = new ModelAndView();

        scheduleService.createSchedule(schedule);
        modelAndView.setViewName("forward:/loadPagedSchedules");

        return modelAndView;
    }

    //显示场次信息到编辑模态窗
    @ResponseBody
    @RequestMapping("/getScheduleById")
    public Result<Schedule> getScheduleById(Long scheduleId) {
        try {
            Schedule schedule = scheduleService.getEasyScheduleById(scheduleId);
            if(schedule == null){
                return new Result(false,"没有获取到场次信息");
            }
            return new Result(true,"查询场次成功",schedule);
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"出现异常,查询场次失败！");
        }
    }

    //更新场次信息
    @ResponseBody
    @RequestMapping("/updateSchedule")
    public Result updateSchedule(Schedule schedule) {
        try {
            Integer count = scheduleService.updateSchedule(schedule);
            if(count!=1){
                return new Result(false, "编辑场次失败!");
            }
            return new Result(true,"编辑场次成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false, "出现异常,编辑场次失败!");
        }
    }

    //场次上架、下架
    @ResponseBody
    @RequestMapping("/deleteSchedule")
    public Result deleteSchedule(Long scheduleId){
        try {
            Integer count = scheduleService.removeSchedule(scheduleId);
            if(count!=1){
                return new Result(false, "操作失败!");
            }
            return new Result(true,"操作成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false, "出现异常,操作失败!");
        }
    }


}
