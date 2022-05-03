package com.xmut.domain;

import java.io.Serializable;
import java.util.List;

public class Cinema implements Serializable {

    private Long cinemaId;             //影院ID
    private String cinemaName;         //影院名称
    private String address;            //影院地址
    private String picture;            //影院图片
    private String telephone;          //影院电话号码
    private List<Hall> hallList;       //该影院下所有放映厅的集合

    public Cinema() {
        super();
    }

    public Cinema(Long cinemaId, String cinemaName, String address, String picture, List<Hall> hallList) {
        this.cinemaId = cinemaId;

        this.cinemaName = cinemaName;
        this.address = address;
        this.picture = picture;
        this.hallList = hallList;
    }

    public Long getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(Long cinemaId) {
        this.cinemaId = cinemaId;
    }

    public String getCinemaName() {
        return cinemaName;
    }

    public void setCinemaName(String cinemaName) {
        this.cinemaName = cinemaName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public List<Hall> getHallList() {
        return hallList;
    }

    public void setHallList(List<Hall> hallList) {
        this.hallList = hallList;
    }

    @Override
    public String toString() {
        return "Cinema{" +
                "cinemaId=" + cinemaId +
                ", cinemaName='" + cinemaName + '\'' +
                ", address='" + address + '\'' +
                ", picture='" + picture + '\'' +
                ", hallList=" + hallList +
                '}';
    }
}
