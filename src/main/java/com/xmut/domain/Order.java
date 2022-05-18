package com.xmut.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Order implements Serializable {

    private Long orderId;               //订单ID
    private String position;            //座位信息
    private Double amount;              //订单金额
    private Date orderTime;             //订单支付时间
    private Integer orderStatus;        //订单状态(0-退票中  -1-无法退票  1-已支付  2-退票成功)
    private User orderUser;             //所属用户对象
    private Schedule orderSchedule;     //所属影片场次对象

    public Order() {
        super();
    }

    public Order(Long orderId, String position, Double amount, Date orderTime, Integer orderStatus, User orderUser, Schedule orderSchedule) {
        this.orderId = orderId;
        this.position = position;
        this.amount = amount;
        this.orderTime = orderTime;
        this.orderStatus = orderStatus;
        this.orderUser = orderUser;
        this.orderSchedule = orderSchedule;
    }

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public Integer getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Integer orderStatus) {
        this.orderStatus = orderStatus;
    }

    public User getOrderUser() {
        return orderUser;
    }

    public void setOrderUser(User orderUser) {
        this.orderUser = orderUser;
    }

    public Schedule getOrderSchedule() {
        return orderSchedule;
    }

    public void setOrderSchedule(Schedule orderSchedule) {
        this.orderSchedule = orderSchedule;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId=" + orderId +
                ", position='" + position + '\'' +
                ", amount=" + amount +
                ", orderTime=" + orderTime +
                ", orderStatus=" + orderStatus +
                ", orderUser=" + orderUser +
                ", orderSchedule=" + orderSchedule +
                '}';
    }
}
