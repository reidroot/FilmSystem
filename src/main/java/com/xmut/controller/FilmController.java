package com.xmut.controller;

import com.xmut.domain.Cinema;
import com.xmut.domain.Film;
import com.xmut.entity.Result;
import com.xmut.service.FilmService;
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
public class FilmController {

    @Autowired
    private FilmService filmService;

    @RequestMapping("/loadPagedFilms")
    public ModelAndView loadPagedCinemas(){
        ModelAndView modelAndView = new ModelAndView();

        List<Film> filmList = filmService.loadAllEasyFilms();

        modelAndView.addObject("filmList", filmList);
        modelAndView.setViewName("forward:admin/pages/list_film.jsp");

        return modelAndView;
    }

    @RequestMapping("/createFilm")
    public String createFilm(Film film, MultipartFile posterFile, HttpServletRequest request){
        //文件上传功能
        String originalFilename = posterFile.getOriginalFilename();       //上传的文件名字
        String filePath = request.getServletContext().getRealPath("/")+"files\\poster\\"+originalFilename; //文件上传后的位置
        String imgPath = "/files/poster/"+originalFilename;     //存储到数据库的文件名字

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

    @ResponseBody
    @RequestMapping("/getFilmById")
    public Result<Film> getFilmById(Long filmId){

        try {
            Film film = filmService.getEasyFilmById(filmId);
            if (film == null)
                return new Result(false,"没有获取影片信息");
            return new Result(true,"查询影片成功", film);
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"查询影片失败！");
        }
    }


    @ResponseBody
    @RequestMapping("/updateFilm")
    public Result updateFilm(Film film, MultipartFile posterFile, HttpServletRequest request){

        if(!posterFile.getOriginalFilename().equals("")){
            //文件上传功能
            String originalFilename = posterFile.getOriginalFilename();       //上传的文件名字
            String filePath = request.getServletContext().getRealPath("/")+"files\\poster\\"+originalFilename; //文件上传后的位置
            String imgPath = "/files/poster/"+originalFilename;     //存储到数据库的文件名字

            try {
                posterFile.transferTo(new File(filePath));
            } catch (IOException e) {
                e.printStackTrace();
            }

            //新增影片
            film.setPoster(imgPath);
        }

        try{
            Integer count = filmService.updateFilm(film);
            if (count != 1)
                return new Result(false, "编辑影片失败!");
            return new Result(true,"编辑影片成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false, "编辑影院失败!");
        }
    }

    @ResponseBody
    @RequestMapping("/deleteFilm")
    public Result deleteFilm(Long filmId){
        try {
            Integer count = filmService.removeFilm(filmId);
            if(count!=1){
                return new Result(false, "操作失败!");
            }
            return new Result(true,"操作成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false, "操作失败!");
        }
    }

}
