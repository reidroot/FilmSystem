package com.xmut.controller;

import com.xmut.domain.Cinema;
import com.xmut.service.CinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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

    @RequestMapping("/loadPagedCinemas")
    public ModelAndView loadPagedCinemas(){
        ModelAndView modelAndView = new ModelAndView();

        List<Cinema> cinemaList = cinemaService.loadAllCinemas();

        modelAndView.addObject("cinemaList", cinemaList);
        modelAndView.setViewName("forward:admin/pages/list_cinema.jsp");

        return modelAndView;
    }
}
