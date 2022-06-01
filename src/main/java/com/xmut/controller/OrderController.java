package com.xmut.controller;

import com.sun.org.apache.xpath.internal.operations.Or;
import com.xmut.domain.Order;
import com.xmut.domain.Schedule;
import com.xmut.entity.Result;
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

        List<Order> orderList = orderService.loadAllOrders();

        modelAndView.addObject("orderList", orderList);
        modelAndView.setViewName("forward:admin/pages/list_order.jsp");

        return modelAndView;
    }

    @RequestMapping("/getOrderById")
    @ResponseBody
    public Result<Order> getOrderById(Long orderId){
        try {
            Order order = orderService.getEasyOrderById(orderId);
            if(order == null){
                return new Result(false,"没有获取到订单信息");
            }
            return new Result(true,"查询订单成功",order);
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"出现异常,查询订单失败！");
        }
    }

    //更新订单信息
    @ResponseBody
    @RequestMapping("/updateOrder")
    public Result updateOrder(Order order) {

        try {
            Integer count = orderService.updateOrder(order);
            if(count!=1){
                return new Result(false, "编辑订单失败!");
            }
            return new Result(true,"编辑订单成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false, "出现异常,编辑订单失败!");
        }

    }
}
