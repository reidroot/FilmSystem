package com.xmut.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Schedule implements Serializable {

    private Long scheduleId;            //场次ID
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",  timezone = "GMT+8")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date startTime;             //放映时间
    private String language;            //语言版本
    private Double price;               //售价
    private String seat;                //座位信息
    private Integer scheduleStatus;     //场次状态(默认1：0-下架  1-上映中)
    private Long cinemaId;              //所属影院id
    private Long filmId;                //所属影片id
    private Cinema scheduleCinema;      //所属影院对象
    private Film scheduleFilm;          //所属影片对象
    private List<Order> orderList;      //该场次下所有订单集合

    public Schedule() {
        super();
    }

    public Schedule(Long scheduleId, Date startTime, String language, Double price, String seat, Integer scheduleStatus, Long cinemaId, Long filmId, Cinema scheduleCinema, Film scheduleFilm, List<Order> orderList) {
        this.scheduleId = scheduleId;
        this.startTime = startTime;
        this.language = language;
        this.price = price;
        this.seat = seat;
        this.scheduleStatus = scheduleStatus;
        this.cinemaId = cinemaId;
        this.filmId = filmId;
        this.scheduleCinema = scheduleCinema;
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

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }

    public Integer getScheduleStatus() {
        return scheduleStatus;
    }

    public void setScheduleStatus(Integer scheduleStatus) {
        this.scheduleStatus = scheduleStatus;
    }

    public Long getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(Long cinemaId) {
        this.cinemaId = cinemaId;
    }

    public Long getFilmId() {
        return filmId;
    }

    public void setFilmId(Long filmId) {
        this.filmId = filmId;
    }

    public Cinema getScheduleCinema() {
        return scheduleCinema;
    }

    public void setScheduleCinema(Cinema scheduleCinema) {
        this.scheduleCinema = scheduleCinema;
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
                ", seat='" + seat + '\'' +
                ", scheduleStatus=" + scheduleStatus +
                ", cinemaId=" + cinemaId +
                ", filmId=" + filmId +
                ", scheduleCinema=" + scheduleCinema +
                ", scheduleFilm=" + scheduleFilm +
                ", orderList=" + orderList +
                '}';
    }
}
