package com.xmut.controller;

import com.xmut.domain.Cinema;
import com.xmut.domain.Film;
import com.xmut.domain.Remark;
import com.xmut.domain.Schedule;
import com.xmut.service.CinemaService;
import com.xmut.service.FilmService;
import com.xmut.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;

@Controller
public class WebController {

    @Autowired
    private FilmService filmService;

    @Autowired
    private ScheduleService scheduleService;


    //---------------------------前台相关-------------------------

    /**
     * 访问前台首页
     * @return
     */
    @RequestMapping("/index")
    public ModelAndView index(){

        ModelAndView modelAndView = new ModelAndView();

        //获取所有影院信息显示到首页
        List<Film> filmList = filmService.loadAllFilms();

        modelAndView.addObject("filmList", filmList);
        modelAndView.setViewName("forward:index.jsp");

        return modelAndView;
    }


    @RequestMapping("/filmInfo")
    public ModelAndView filmInfo(long filmId){

        ModelAndView modelAndView = new ModelAndView();

        //获取该filmId的影片信息
        Film filmInfo = filmService.getFilmById(filmId);

        //获取放映改电影的所有场次
        List<Schedule> scheduleList = scheduleService.loadScheduleByFilmId(filmId);

        Map<String,Cinema> map = new HashMap<String, Cinema>();

        for (Schedule schedule:scheduleList){
            map.put(schedule.getScheduleCinema().getCinemaName(),schedule.getScheduleCinema());
        }

        List<Cinema> cinemaList = new ArrayList<Cinema>();
        for (Cinema c : map.values()){
            cinemaList.add(c);
        }

        modelAndView.addObject("filmInfo", filmInfo);
        modelAndView.addObject("scheduleList", scheduleList);
        modelAndView.addObject("cinemaList",cinemaList);

        modelAndView.setViewName("forward:movie.jsp");

        return modelAndView;
    }
}
