package com.xmut.controller;

import com.xmut.domain.Cinema;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CinemaController {

    @ResponseBody
    @RequestMapping("/getCinema")
    public String getCinemaController(@RequestBody Cinema cinema){

        System.out.println("新增的影院：");
        System.out.println(cinema);
        if (cinema != null)
            return "success";
        else
            return "error";
    }
}
