package com.xmut.domain;

import java.io.Serializable;
import java.util.List;

public class Hall implements Serializable {

    private Long hallId;                    //放映厅ID
    private String hallName;                //放映厅名称
    private String capacity;                //放映厅容量
    private Cinema hallCinema;              //所属影院对象
    private List<Schedule> scheduleList;    //该放映厅下所有场次集合

    public Hall() {
        super();
    }

    public Hall(Long hallId, String hallName, String capacity, Cinema hallCinema, List<Schedule> scheduleList) {
        this.hallId = hallId;
        this.hallName = hallName;
        this.capacity = capacity;
        this.hallCinema = hallCinema;
        this.scheduleList = scheduleList;
    }

    public Long getHallId() {
        return hallId;
    }

    public void setHallId(Long hallId) {
        this.hallId = hallId;
    }

    public String getHallName() {
        return hallName;
    }

    public void setHallName(String hallName) {
        this.hallName = hallName;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public Cinema getHallCinema() {
        return hallCinema;
    }

    public void setHallCinema(Cinema hallCinema) {
        this.hallCinema = hallCinema;
    }

    public List<Schedule> getScheduleList() {
        return scheduleList;
    }

    public void setScheduleList(List<Schedule> scheduleList) {
        this.scheduleList = scheduleList;
    }

    @Override
    public String toString() {
        return "Hall{" +
                "hallId=" + hallId +
                ", hallName='" + hallName + '\'' +
                ", capacity='" + capacity + '\'' +
                ", hallCinema=" + hallCinema +
                ", scheduleList=" + scheduleList +
                '}';
    }
}
