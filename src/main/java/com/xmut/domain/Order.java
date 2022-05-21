package com.xmut.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Order implements Serializable {

    private Long orderId;               //订单ID
    private String orderNum;            //订单编号
    private String position;            //座位信息
    private Double amount;              //订单金额
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date orderTime;             //订单支付时间
    private Integer orderStatus;        //订单状态(0-退票中  -1-无法退票  1-已支付  2-退票成功)
    private Long userId;               //所属用户id
    private Long scheduleId;           //所属影片场次id
    private User orderUser;             //所属用户对象
    private Schedule orderSchedule;     //所属影片场次对象

    public Order() {
        super();
    }

    public Order(Long orderId, String orderNum, String position, Double amount, Date orderTime, Integer orderStatus, Long userId, Long scheduleId, User orderUser, Schedule orderSchedule) {
        this.orderId = orderId;
        this.orderNum = orderNum;
        this.position = position;
        this.amount = amount;
        this.orderTime = orderTime;
        this.orderStatus = orderStatus;
        this.userId = userId;
        this.scheduleId = scheduleId;
        this.orderUser = orderUser;
        this.orderSchedule = orderSchedule;
    }

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
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

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Long scheduleId) {
        this.scheduleId = scheduleId;
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
                ", orderNum='" + orderNum + '\'' +
                ", position='" + position + '\'' +
                ", amount=" + amount +
                ", orderTime=" + orderTime +
                ", orderStatus=" + orderStatus +
                ", userId=" + userId +
                ", scheduleId=" + scheduleId +
                ", orderUser=" + orderUser +
                ", orderSchedule=" + orderSchedule +
                '}';
    }
}
