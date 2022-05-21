package com.xmut.controller;

import com.xmut.domain.*;
import com.xmut.service.CinemaService;
import com.xmut.service.FilmService;
import com.xmut.service.ScheduleService;
import com.xmut.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
public class WebController {

    @Autowired
    private FilmService filmService;

    @Autowired
    private ScheduleService scheduleService;

    @Autowired
    private UserService userService;


    // seat存放二维数组座位图
    char seat[][] = new char[10][11];


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


    @RequestMapping("/userLogin")
    public String userLogin(User user, HttpServletRequest request){

        //调用Service
        User dbUser = userService.login(user);
        System.out.println(dbUser);

        if (dbUser == null){
            //登陆失败
            request.setAttribute("msg","登录失败，邮箱或密码错误！");
            return "forward:login.jsp";
        }else{
            request.getSession().setAttribute("USER_SEESION", dbUser);
            return "redirect:index";
        }
    }


    /**
     * 为前台movie.jsp页面传值
     * @param filmId
     * @return
     */
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


    /**
     * 为前台ticket.jsp页面传值
     * @param scheduleId
     * @return
     */
    @RequestMapping("/ticket")
    public ModelAndView ticket(long scheduleId){
        ModelAndView modelAndView = new ModelAndView();

        //获取选购场次的相关信息
        Schedule schedule = scheduleService.getScheduleById(scheduleId);

        //前台行列
        int [] rows = new int[]{1,2,3,4,5,6,7,8,9};
        int [] cols = new int[]{1,2,3,4,5,6,7,8,9,10};

        //---------------------测试-----------------------------
        String testString = "11111111111/10000000001/10000000000/10000000000/10000000000/10000000000/10000000000/10000000000/10000000000/10000000000";

        // 按'/'分隔出每一行
        String[] stringArray = testString.split("/");

        // 将座位信息变为seat二维数组
        int i = 0;
        for(String string: stringArray) {
            char[] stringToCharArray = string.toCharArray();
            seat[i] = stringToCharArray;
            i++;
        }

        // 修改seat为int数组
        int seatint[][] = new int[10][11];
        for(int k=0;k<10;k++) {
            for(int n=0;n<11;n++) {
                seatint[k][n] = seat[k][n] - '0';
            }
        }

        System.out.println(Arrays.toString(seatint));

        modelAndView.addObject("rows", rows);
        modelAndView.addObject("cols", cols);
        modelAndView.addObject("seat", seatint);
        modelAndView.addObject("schedule", schedule);
        modelAndView.setViewName("forward:ticket.jsp");

        return modelAndView;
    }

    @RequestMapping("/generateOrder")
    @ResponseBody
    public String generateOrder(String rows, String cols, Order order){
        System.out.println(order);

        //用户购买的座位行、列
        char[] rowArray = rows.toCharArray();
        char[] colArray = cols.toCharArray();

        //将购买后的座位修改为1
        for(int a=0;a<rowArray.length;a++) {
            for(int k=0;k<10;k++) {
                for(int n=0;n<11;n++) {
                    if(rowArray[a]-'0' == k && colArray[a]-'0' == n)
                        seat[k][n] = '1';
                }
            }
        }

        //将seat二维数组转为字符串
        String seatSql = "";
        for(int k=0;k<10;k++) {
            for(int n=0;n<11;n++) {
                seatSql += seat[k][n];
            }
            seatSql += "/";
        }

        System.out.println(seatSql);

        return "success";
    }
}
