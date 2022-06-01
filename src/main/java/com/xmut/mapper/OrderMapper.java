package com.xmut.mapper;

import com.github.pagehelper.Page;
import com.sun.org.apache.xpath.internal.operations.Or;
import com.xmut.domain.Order;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderMapper {
    /* 命名规范：addXxx()  deleteXxx() updateXxx() findXxxById() selectAllXxxs() selectPagedXxxs()
    注意： selectAllXxxs，记得加s */

    /**
     * 新增Order
     * @param order
     * @return
     */
    public Integer addOrder(Order order);

    /**
     * 更新Order
     * @param order
     * @return
     */
    public Integer updateOrder(Order order);

    /**
     * 根据orderId查询Order  一对一关联 User、Schedule
     * @param orderId
     * @return
     */
    public Order findOrderById(Long orderId);

    /**
     * 根据userId 查询相关订单
     * @return
     */
    public List<Order> findOrderByUserId(Long userId);

    /**
     * 简单查询Order
     * @param orderId
     * @return
     */
    public Order findEasyOrderById(Long orderId);

    /**
     * 查询所有Order
     * @return
     */
    public List<Order> selectAllOrders();

    /**
     * 分页查询所有Order
     * @return
     */
    public Page<Order> selectPagedOrders();

}

