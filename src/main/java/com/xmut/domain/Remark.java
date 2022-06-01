package com.xmut.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Remark implements Serializable {

    private Integer remarkId;       //评论ID
    private String context;         //评论内容
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date remarkTime;        //评论时间
    private Integer score;          //评分（1-10）
    private Integer isBought;       //是否购票(0-未购票 1-已购票高亮显示)
    private Long filmId;            //所属影片id
    private Long userId;            //所属用户id
    private Film remarkFilm;        //所属影片对象
    private User remarkUser;        //所属用户对象

    public Remark() {
        super();
    }

    public Remark(Integer remarkId, String context, Date remarkTime, Integer score, Integer isBought, Long filmId, Long userId, Film remarkFilm, User remarkUser) {
        this.remarkId = remarkId;
        this.context = context;
        this.remarkTime = remarkTime;
        this.score = score;
        this.isBought = isBought;
        this.filmId = filmId;
        this.userId = userId;
        this.remarkFilm = remarkFilm;
        this.remarkUser = remarkUser;
    }

    public Integer getRemarkId() {
        return remarkId;
    }

    public void setRemarkId(Integer remarkId) {
        this.remarkId = remarkId;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Date getRemarkTime() {
        return remarkTime;
    }

    public void setRemarkTime(Date remarkTime) {
        this.remarkTime = remarkTime;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Integer getIsBought() {
        return isBought;
    }

    public void setIsBought(Integer isBought) {
        this.isBought = isBought;
    }

    public Long getFilmId() {
        return filmId;
    }

    public void setFilmId(Long filmId) {
        this.filmId = filmId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Film getRemarkFilm() {
        return remarkFilm;
    }

    public void setRemarkFilm(Film remarkFilm) {
        this.remarkFilm = remarkFilm;
    }

    public User getRemarkUser() {
        return remarkUser;
    }

    public void setRemarkUser(User remarkUser) {
        this.remarkUser = remarkUser;
    }

    @Override
    public String toString() {
        return "Remark{" +
                "remarkId=" + remarkId +
                ", context='" + context + '\'' +
                ", remarkTime=" + remarkTime +
                ", score=" + score +
                ", isBought=" + isBought +
                ", filmId=" + filmId +
                ", userId=" + userId +
                ", remarkFilm=" + remarkFilm +
                ", remarkUser=" + remarkUser +
                '}';
    }
}
