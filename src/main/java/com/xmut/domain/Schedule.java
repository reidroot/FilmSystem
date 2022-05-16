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
    private Cinema scheduleCinema;      //所属影院对象
    private Film scheduleFilm;          //所属影片对象
    private List<Order> orderList;      //该场次下所有订单集合

    public Schedule() {
        super();
    }

    public Schedule(Long scheduleId, Date startTime, String language, Double price, Integer remain, Integer scheduleStatus, Cinema scheduleCinema, Film scheduleFilm, List<Order> orderList) {
        this.scheduleId = scheduleId;
        this.startTime = startTime;
        this.language = language;
        this.price = price;
        this.remain = remain;
        this.scheduleStatus = scheduleStatus;
        this.scheduleCinema = scheduleCinema;
        this.scheduleFilm = scheduleFilm;
        this.orderList = orderList;
    }

    public Long getScheduleId() {
        return scheduleId;
    }

    public Date getStartTime() {
        return startTime;
    }

    public String getLanguage() {
        return language;
    }

    public Double getPrice() {
        return price;
    }

    public Integer getRemain() {
        return remain;
    }

    public Integer getScheduleStatus() {
        return scheduleStatus;
    }

    public Cinema getScheduleCinema() {
        return scheduleCinema;
    }

    public Film getScheduleFilm() {
        return scheduleFilm;
    }

    public List<Order> getOrderList() {
        return orderList;
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
                ", scheduleCinema=" + scheduleCinema +
                ", scheduleFilm=" + scheduleFilm +
                ", orderList=" + orderList +
                '}';
    }
}
