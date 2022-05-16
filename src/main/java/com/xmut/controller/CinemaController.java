package com.xmut.controller;

import com.xmut.domain.Cinema;
import com.xmut.entity.PageResult;
import com.xmut.service.CinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.IOException;

@Controller
public class CinemaController {

    @Autowired
    private CinemaService cinemaService;

    @RequestMapping("/getCinema")
    public String getCinemaController(Cinema cinema, MultipartFile pictureFile){

        //文件上传功能
        String originalFilename = pictureFile.getOriginalFilename();       //上传的文件名字
        String filePath = "D:\\J2EE_XL\\File_rating_website\\src\\main\\webapp\\files\\"+originalFilename; //文件上传后的位置
        String imgPath = "/files/"+originalFilename;
        try {
            pictureFile.transferTo(new File(filePath));
        } catch (IOException e) {
            e.printStackTrace();
        }

        // 新增影院
        cinema.setPicture(imgPath);
        cinemaService.createCinema(cinema);

        return "forward:loadPagedCinemas";
    }

    @RequestMapping("/loadPagedCinemas")
    public ModelAndView loadPagedCinemas(){
        ModelAndView modelAndView = new ModelAndView();

        int pageNum = 1;
        int pageSize = 7;

        PageResult pageResult = cinemaService.loadPagedOrders(pageNum, pageSize);
        modelAndView.addObject("pageResult", pageResult);

        modelAndView.setViewName("forward:admin/pages/list_cinema.jsp");

        return modelAndView;
    }
}
