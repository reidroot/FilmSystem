package com.xmut.controller;

import com.xmut.domain.Order;
import com.xmut.domain.PageResult;
import com.xmut.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping("/orederTest")
    @ResponseBody
    public String test(){
        System.out.println("---------------order测试---------------");
        Order order = orderService.getOrderById((long)1);
        System.out.println(order);

        List<Order> orderList = orderService.loadAllOrders();
        for (Order o : orderList) {
            System.out.println("===" + o);
        }
        return order.toString();
    }

    @RequestMapping("/loadPagedOrders")
    public ModelAndView loadPagedOrders(){
        ModelAndView modelAndView = new ModelAndView();

        int pageNum = 1;
        int pageSize = 1;
        PageResult pageResult = orderService.loadPagedOrders(pageNum, pageSize);
        modelAndView.addObject("pageResult", pageResult);

        modelAndView.setViewName("forward:admin/pages/list_order.jsp");

        return modelAndView;
    }
}
