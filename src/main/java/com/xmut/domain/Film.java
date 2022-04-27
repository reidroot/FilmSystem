package com.xmut.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Film implements Serializable {

    private Long filmId;                //影片ID
    private String filmName;            //影片名称
    private String director;            //导演
    private String screenwriter;        //编剧
    private String actor;               //演员
    private String nation;              //制片国家/地区
    private Date releaseTime;           //上映时间
    private Integer runningTime;        //片长(分钟)
    private String poster;              //海报
    private Integer remarkCount;        //影片参评人数（热评榜）
    private Integer filmStatus;         //影片状态(默认1：0-下架  1-在线)
    private List<Remark> remarkList;    //该影片下所有的评论集合
    private List<Tag> tagList;          //影片标签（多个）

    public Film() {
        super();
    }

    public Film(Long filmId, String filmName, String director, String screenwriter, String actor, String nation, Date releaseTime, Integer runningTime, String poster, Integer remarkCount, Integer filmStatus, List<Remark> remarkList, List<Tag> tagList) {
        this.filmId = filmId;
        this.filmName = filmName;
        this.director = director;
        this.screenwriter = screenwriter;
        this.actor = actor;
        this.nation = nation;
        this.releaseTime = releaseTime;
        this.runningTime = runningTime;
        this.poster = poster;
        this.remarkCount = remarkCount;
        this.filmStatus = filmStatus;
        this.remarkList = remarkList;
        this.tagList = tagList;
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

    public String getScreenwriter() {
        return screenwriter;
    }

    public void setScreenwriter(String screenwriter) {
        this.screenwriter = screenwriter;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
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

    public Integer getRemarkCount() {
        return remarkCount;
    }

    public void setRemarkCount(Integer remarkCount) {
        this.remarkCount = remarkCount;
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

    public List<Tag> getTagList() {
        return tagList;
    }

    public void setTagList(List<Tag> tagList) {
        this.tagList = tagList;
    }

    @Override
    public String toString() {
        return "Film{" +
                "filmId=" + filmId +
                ", filmName='" + filmName + '\'' +
                ", director='" + director + '\'' +
                ", screenwriter='" + screenwriter + '\'' +
                ", actor='" + actor + '\'' +
                ", nation='" + nation + '\'' +
                ", releaseTime=" + releaseTime +
                ", runningTime=" + runningTime +
                ", poster='" + poster + '\'' +
                ", remarkCount=" + remarkCount +
                ", filmStatus=" + filmStatus +
                ", remarkList=" + remarkList +
                ", tagList=" + tagList +
                '}';
    }
}
