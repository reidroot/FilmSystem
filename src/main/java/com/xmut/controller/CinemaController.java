package com.xmut.controller;

import com.xmut.domain.Cinema;
import com.xmut.entity.Result;
import com.xmut.service.CinemaService;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class CinemaController {

    @Autowired
    private CinemaService cinemaService;

    @RequestMapping("/createCinema")
    public String createCinema(Cinema cinema, MultipartFile pictureFile, HttpServletRequest request){

        //文件上传功能
        String originalFilename = pictureFile.getOriginalFilename();       //上传的文件名字
        String filePath = request.getServletContext().getRealPath("/")+"files\\cinema\\"+originalFilename; //文件上传后的位置
        String imgPath = "/files/cinema/"+originalFilename;
        try {
            pictureFile.transferTo(new File(filePath));
        } catch (IOException e) {
            e.printStackTrace();
        }

        // 新增影院
        cinema.setPicture(imgPath);
        cinemaService.createCinema(cinema);

        return "redirect:loadPagedCinemas";
    }

    @ResponseBody
    @RequestMapping("/getCinemaById")
    public Result<Cinema> getCinemaById(Long cinemaId){

        try {
            Cinema cinema = cinemaService.findEasyCinemaById(cinemaId);
            if (cinema == null)
                return new Result(false,"没有获取影院信息");
            return new Result(true,"查询场次成功", cinema);

        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"出现异常，查询影院失败！");
        }
    }

    @ResponseBody
    @RequestMapping("/updateCinema")
    public Result updateCinema(Cinema cinema, MultipartFile pictureFile, HttpServletRequest request){

        //若更新影院图片
        if (!pictureFile.getOriginalFilename().equals("")){
            //文件上传功能
            String originalFilename = pictureFile.getOriginalFilename();       //上传的文件名字
            String filePath = request.getServletContext().getRealPath("/")+"files\\cinema\\"+originalFilename; //文件上传后的位置
            String imgPath = "/files/cinema/"+originalFilename;
            try {
                pictureFile.transferTo(new File(filePath));
            } catch (IOException e) {
                e.printStackTrace();
            }
            cinema.setPicture(imgPath);
        }

        try {
            Integer count = cinemaService.updateCinema(cinema);
            if(count != 1){
                return new Result(false, "编辑影院失败!");
            }
            return new Result(true,"编辑影院成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false, "编辑影院失败!");
        }
    }

    @RequestMapping("/loadPagedCinemas")
    public ModelAndView loadPagedCinemas(){
        ModelAndView modelAndView = new ModelAndView();

        List<Cinema> cinemaList = cinemaService.loadAllCinemas();

        modelAndView.addObject("cinemaList", cinemaList);
        modelAndView.setViewName("forward:admin/pages/list_cinema.jsp");

        return modelAndView;
    }

}
