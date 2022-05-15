package com.xmut.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.xmut.domain.Order;
import com.xmut.entity.PageResult;
import com.xmut.mapper.OrderMapper;
import com.xmut.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    public Order getOrderById(long orderId) {
        return orderMapper.findOrderById(orderId);
    }

    public Order getEasyOrderById(long orderId) {
        return orderMapper.findEasyOrderById(orderId);
    }

    public List<Order> loadAllOrders() {
        return orderMapper.selectAllOrders();
    }

    public PageResult loadPagedOrders(Integer pageNum, Integer pageSize) {

        //开启分页查询
        PageHelper.startPage(pageNum, pageSize);
        //调用Dao
        Page<Order> page = orderMapper.selectPagedOrders();

        return new PageResult(page.getTotal(), page.getResult());
    }
}
