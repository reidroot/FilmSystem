package com.xmut.controller;

import com.xmut.domain.Slide;
import com.xmut.entity.Result;
import com.xmut.service.FilmService;
import com.xmut.service.SlideService;
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
public class SlideController {

    @Autowired
    private SlideService slideService;

    @Autowired
    private FilmService filmService;

    @RequestMapping("/loadPagedSlide")
    public ModelAndView loadPagedSlide(){
        ModelAndView modelAndView = new ModelAndView();

        List<Slide> slideList = slideService.loadAllSlides();

        modelAndView.addObject("slideList", slideList);
        modelAndView.setViewName("forward:admin/pages/list_slide.jsp");

        return modelAndView;
    }


    @ResponseBody
    @RequestMapping("/getSlideById")
    public Result<Slide> getSlideById(Long slideId){

        try {
            Slide slide = slideService.getSlideById(slideId);
            slide.setFilmList(filmService.loadAllEasyFilms());

            if (slide == null)
                return new Result(false, "没有获取轮播图信息");
            return new Result(true, "获取轮播图信息", slide);

        } catch (Exception e) {
            e.printStackTrace();
            return new Result(false,"出现异常，获取轮播图失败！");
        }
    }


    @ResponseBody
    @RequestMapping("/updateSlide")
    public Result updateSlide(Slide slide, MultipartFile imgFile, HttpServletRequest request){
        //若更新轮播图
        if (!imgFile.getOriginalFilename().equals("")){
            //文件上传功能
            String originalFilename = imgFile.getOriginalFilename();       //上传的文件名字
            String filePath = request.getServletContext().getRealPath("/")+"files\\slide\\"+originalFilename; //文件上传后的位置
            String imgPath = "/files/slide/"+originalFilename;
            try {
                imgFile.transferTo(new File(filePath));
            } catch (IOException e) {
                e.printStackTrace();
            }
            slide.setImg(imgPath);
        }

        try {
            Integer count = slideService.updateSlide(slide);
            if(count != 1){
                return new Result(false, "更换轮播图失败!");
            }
            return new Result(true,"更新轮播图成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false, "出现异常，更新轮播图失败!");
        }
    }

}
