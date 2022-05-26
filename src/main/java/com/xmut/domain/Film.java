package com.xmut.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Film implements Serializable {

    private Long filmId;                //影片ID
    private String filmName;            //影片名称
    private String director;            //导演
    private String actor;               //主演
    private String tag;                 //类型
    private String nation;              //制片国家/地区
    @JsonFormat(pattern="yyyy-MM-dd", timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date releaseTime;           //上映时间
    private Integer runningTime;        //片长(分钟)
    private String poster;              //海报
    private String description;         //影片简介
    private Integer remarkCount;        //影片参评人数（热评榜）
    private Double remarkScore;          //影片评分(好评榜)
    private Integer filmStatus;         //影片状态(默认1：0-下架  1-在线)
    private List<Remark> remarkList;    //该影片下所有的评论集合

    public Film() {
        super();
    }

    public Film(Long filmId, String filmName, String director, String actor, String tag, String nation, Date releaseTime, Integer runningTime, String poster, String description, Integer remarkCount, Double remarkScore, Integer filmStatus, List<Remark> remarkList) {
        this.filmId = filmId;
        this.filmName = filmName;
        this.director = director;
        this.actor = actor;
        this.tag = tag;
        this.nation = nation;
        this.releaseTime = releaseTime;
        this.runningTime = runningTime;
        this.poster = poster;
        this.description = description;
        this.remarkCount = remarkCount;
        this.remarkScore = remarkScore;
        this.filmStatus = filmStatus;
        this.remarkList = remarkList;
    }

    public Long getFilmId() {
        return filmId;
    }

    public void setFilmId(Long filmId) {
        this.filmId = filmId;
    }

    public String getFilmName() {
        return filmName;
    }

    public void setFilmName(String filmName) {
        this.filmName = filmName;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public Date getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(Date releaseTime) {
        this.releaseTime = releaseTime;
    }

    public Integer getRunningTime() {
        return runningTime;
    }

    public void setRunningTime(Integer runningTime) {
        this.runningTime = runningTime;
    }

    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getRemarkCount() {
        return remarkCount;
    }

    public void setRemarkCount(Integer remarkCount) {
        this.remarkCount = remarkCount;
    }

    public Double getRemarkScore() {
        return remarkScore;
    }

    public void setRemarkScore(Double remarkScore) {
        this.remarkScore = remarkScore;
    }

    public Integer getFilmStatus() {
        return filmStatus;
    }

    public void setFilmStatus(Integer filmStatus) {
        this.filmStatus = filmStatus;
    }

    public List<Remark> getRemarkList() {
        return remarkList;
    }

    public void setRemarkList(List<Remark> remarkList) {
        this.remarkList = remarkList;
    }
}
