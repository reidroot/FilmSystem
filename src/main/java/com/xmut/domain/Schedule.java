package com.xmut.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Schedule implements Serializable {

    private Long scheduleId;            //场次ID
    private Date startTime;            //放映时间
    private String language;            //语言版本
    private Double price;               //售价
    private Integer remain;             //剩余座位
    private Integer scheduleStatus;     //场次状态(默认1：0-下架  1-上映中)
    private Hall scheduleHall;          //所属放映厅对象
    private Film scheduleFilm;          //所属影片对象
    private List<Order> orderList;      //该场次下所有订单集合

    public Schedule() {
        super();
    }

    public Schedule(Long scheduleId, Date startTime, String language, Double price, Integer remain, Integer scheduleStatus, Hall scheduleHall, Film scheduleFilm, List<Order> orderList) {
        this.scheduleId = scheduleId;
        this.startTime = startTime;
        this.language = language;
        this.price = price;
        this.remain = remain;
        this.scheduleStatus = scheduleStatus;
        this.scheduleHall = scheduleHall;
        this.scheduleFilm = scheduleFilm;
        this.orderList = orderList;
    }

    public Long getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Long scheduleId) {
        this.scheduleId = scheduleId;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getRemain() {
        return remain;
    }

    public void setRemain(Integer remain) {
        this.remain = remain;
    }

    public Integer getScheduleStatus() {
        return scheduleStatus;
    }

    public void setScheduleStatus(Integer scheduleStatus) {
        this.scheduleStatus = scheduleStatus;
    }

    public Hall getScheduleHall() {
        return scheduleHall;
    }

    public void setScheduleHall(Hall scheduleHall) {
        this.scheduleHall = scheduleHall;
    }

    public Film getScheduleFilm() {
        return scheduleFilm;
    }

    public void setScheduleFilm(Film scheduleFilm) {
        this.scheduleFilm = scheduleFilm;
    }

    public List<Order> getOrderList() {
        return orderList;
    }

    public void setOrderList(List<Order> orderList) {
        this.orderList = orderList;
    }

    @Override
    public String toString() {
        return "Schedule{" +
                "scheduleId=" + scheduleId +
                ", startTime=" + startTime +
                ", language='" + language + '\'' +
                ", price=" + price +
                ", remain=" + remain +
                ", scheduleStatus=" + scheduleStatus +
                ", scheduleHall=" + scheduleHall +
                ", scheduleFilm=" + scheduleFilm +
                ", orderList=" + orderList +
                '}';
    }
}
