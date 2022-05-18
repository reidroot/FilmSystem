package com.xmut.controller;

import com.xmut.domain.Film;
import com.xmut.service.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Controller
public class FilmController {

    @Autowired
    private FilmService filmService;

    @ResponseBody
    @RequestMapping("/createFilm")
    public String createFilm(Film film, MultipartFile posterFile){
        //文件上传功能
        String originalFilename = posterFile.getOriginalFilename();       //上传的文件名字
        String filePath = "D:\\J2EE_XL\\File_rating_website\\src\\main\\webapp\\files\\poster"+originalFilename; //文件上传后的位置
        String imgPath = "/files/poster/"+originalFilename;
        try {
            posterFile.transferTo(new File(filePath));
        } catch (IOException e) {
            e.printStackTrace();
        }

        //新增影片
        film.setPoster(imgPath);
        filmService.createFilm(film);

        return "success";
    }
}
