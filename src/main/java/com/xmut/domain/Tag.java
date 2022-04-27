package com.xmut.domain;

import java.io.Serializable;
import java.util.List;

public class Tag implements Serializable {

    private Long tagId;             //标签ID
    private String tagName;         //标签名
    private List<Film> filmList;    //该标签下的所有影片集合

    public Tag() {
        super();
    }

    public Tag(Long tagId, String tagName, List<Film> filmList) {
        this.tagId = tagId;
        this.tagName = tagName;
        this.filmList = filmList;
    }

    public Long getTagId() {
        return tagId;
    }

    public void setTagId(Long tagId) {
        this.tagId = tagId;
    }

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }

    public List<Film> getFilmList() {
        return filmList;
    }

    public void setFilmList(List<Film> filmList) {
        this.filmList = filmList;
    }

    @Override
    public String toString() {
        return "Tag{" +
                "tagId=" + tagId +
                ", tagName='" + tagName + '\'' +
                ", filmList=" + filmList +
                '}';
    }
}
