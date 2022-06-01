package com.xmut.service;

import com.xmut.domain.Order;
import com.xmut.entity.PageResult;

import java.util.List;

public interface OrderService {
    /*命名规范：createXxx()  removeXxx() updateXxx() getXxxById() loadAllXxxs() loadPagedXxxs()
    注意: loadAllXxxs复数要加s, 例: loadAllAdmins*/

    /**
     * 新增订单信息
     * @param order
     * @return
     */
    public Integer createOrder(Order order);

    /**
     * 更新订单信息
     * @param order
     * @return
     */
    public Integer updateOrder(Order order);

    /**
     * 根据订单ID查找复杂订单信息
     * @param orderId
     * @return
     */
    public Order getOrderById(long orderId);

    /**
     * 根据订单ID查找简单订单信息
     * @param orderId
     * @return
     */
    public Order getEasyOrderById(long orderId);

    /**
     * 查询所有订单信息
     * @return
     */
    public List<Order> loadAllOrders();

    /**
     * 分页查询订单信息
     * @return
     */
    public PageResult loadPagedOrders(Integer pageNum, Integer pageSize);
}
