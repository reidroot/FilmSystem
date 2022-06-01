package com.xmut.controller;

import com.xmut.domain.*;
import com.xmut.entity.Result;
import com.xmut.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class WebController {

    @Autowired
    private FilmService filmService;

    @Autowired
    private SlideService slideService;

    @Autowired
    private UserService userService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ScheduleService scheduleService;

    //seat存放二维数组座位图
    char seat[][] = new char[10][11];

    /**
     * 访问前台首页
     * @return
     */
    @RequestMapping("/index")
    public ModelAndView index(){

        ModelAndView modelAndView = new ModelAndView();

        //获取所有影院信息、轮播图信息显示到首页
        List<Film> filmList = filmService.loadAllFilms();
        List<Slide> slideList = slideService.loadAllSlides();

        for (Slide slide:slideList) {
            System.out.println(slide);
        }

        modelAndView.addObject("filmList", filmList);
        modelAndView.addObject("slideList", slideList);
        modelAndView.setViewName("forward:index.jsp");

        return modelAndView;
    }

    /**
     * 检查改邮箱是否已注册
     * @param userEmail
     * @return
     */
    @ResponseBody
    @RequestMapping("/checkUserByEmail")
    public Result  checkUserByEmail(String userEmail){
        if (userEmail == null || userEmail.length() == 0){
            return new Result(false, "邮箱不能为空");
        }else{
            Integer count = userService.checkUserByEmail(userEmail);

            if (count == 0)
                return new Result(true, "该邮箱未注册过");
            else
                return new Result(false, "该邮箱已被占用！");
        }
    }

    @ResponseBody
    @RequestMapping("/createUser")
    public Result createUser(User user){
        user.setIcon("/files/icon/default.png");
        try {
            Integer count = userService.createUser(user);
            if(count!=1){
                return new Result(false, "注册用户失败!");
            }
            return new Result(true,"注册用户成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false, "出现异常,注册用户失败!");
        }

    }

    @ResponseBody
    @RequestMapping("/updateUser")
    public Result updateUser(User user, MultipartFile iconFile, HttpServletRequest request){

        //若更新用户头像
        if (!iconFile.getOriginalFilename().equals("")){
            //文件上传功能
            String originalFilename = iconFile.getOriginalFilename();       //上传的文件名字
            String filePath = request.getServletContext().getRealPath("/")+"files\\icon\\"+originalFilename; //文件上传后的位置
            String imgPath = "/files/icon/"+originalFilename;
            try {
                iconFile.transferTo(new File(filePath));
            } catch (IOException e) {
                e.printStackTrace();
            }
            user.setIcon(imgPath);
        }

        try {
            Integer count = userService.updateUser(user);
            if(count!=1){
                return new Result(false, "修改个人信息失败!");
            }
            User newUser = userService.getUserById(user.getUserId());
            request.getSession().setAttribute("USER_SEESION", newUser);

            return new Result(true,"修改个人信息成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false, "出现异常,修改个人信息失败!");
        }


    }


    /**
     * 用户登录
     * @param user
     * @param request
     * @return
     */
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
     * 退出登录
     * @param request
     * @return
     */
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){

        HttpSession session = request.getSession();
        //销毁Session
        session.invalidate();

        return "redirect:login.jsp";
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
        char score[] = filmInfo.getRemarkScore().toString().toCharArray();

        //获取放映改电影的所有场次
        List<Schedule> scheduleList = scheduleService.loadScheduleByFilmId(filmId);

        //影院
        // 列表去重
        Map<String,Cinema> map = new HashMap<String, Cinema>();
        for (Schedule schedule:scheduleList){
            map.put(schedule.getScheduleCinema().getCinemaName(),schedule.getScheduleCinema());
        }
        List<Cinema> cinemaList = new ArrayList<Cinema>();
        for (Cinema c : map.values()){
            cinemaList.add(c);
        }


        modelAndView.addObject("filmInfo", filmInfo);
        modelAndView.addObject("score", score);
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

        //-------------------------购票------------------------
        //前台行列
        int [] rows = new int[]{1,2,3,4,5,6,7,8,9};
        int [] cols = new int[]{1,2,3,4,5,6,7,8,9,10};

        // 按'/'分隔出每一行
        String[] stringArray = schedule.getSeat().split("/");

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

    /**
     * 生成订单，更新座位信息
     * @param rows
     * @param cols
     * @param order
     * @param userId
     * @param scheduleId
     * @return
     */
    @RequestMapping("/generateOrder")
    @ResponseBody
    public String generateOrder(String rows, String cols, Order order, Long userId, Long scheduleId){
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
            if (k < 9){
                seatSql += "/";
            }
        }

        //装配Oder
        order.setUserId(userId);
        order.setScheduleId(scheduleId);
        order.setOrderNum(System.currentTimeMillis()+""+order.getUserId());
        order.setOrderTime(new Date());

        orderService.createOrder(order);

        //更新座位信息
        Schedule schedule = scheduleService.getEasyScheduleById(order.getScheduleId());
        schedule.setSeat(seatSql);
        scheduleService.updateSeat(schedule);

        return "success";
    }
}
