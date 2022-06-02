package com.xmut.controller;

import com.xmut.domain.Remark;
import com.xmut.entity.Result;
import com.xmut.service.RemarkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class RemarkController {

    @Autowired
    private RemarkService remarkService;

    //后台显示评论列表
    @RequestMapping("/loadPagedRemarks")
    public ModelAndView loadPagedRemarks(){
        ModelAndView modelAndView = new ModelAndView();

        List<Remark> remarkList = remarkService.loadAllRemarks();

        modelAndView.addObject("remarkList", remarkList);
        modelAndView.setViewName("forward:admin/pages/list_remark.jsp");

        return modelAndView;
    }


    //后台删除评论
    @ResponseBody
    @RequestMapping("/deleteRemark")
    public Result deleteRemark(Long remarkId){
        try {
            Integer count = remarkService.removeRemark(remarkId);
            if(count != 1){
                return new Result(false, "删除评论失败!");
            }
            return new Result(true,"删除评论成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false, "出现异常,删除评论失败!");
        }
    }
}
