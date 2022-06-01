package com.xmut.domain;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.io.Serializable;
import java.util.List;
@JsonIgnoreProperties(value="handler")
public class Slide implements Serializable {

    private Long slideId;
    private String img;
    private Long filmId;
    private Film slideFilm;
    private List<Film> filmList;

    public Slide() {
        super();
    }

    public Slide(Long slideId, String img, Long filmId, Film slideFilm, List<Film> filmList) {
        this.slideId = slideId;
        this.img = img;
        this.filmId = filmId;
        this.slideFilm = slideFilm;
        this.filmList = filmList;
    }

    public Long getSlideId() {
        return slideId;
    }

    public void setSlideId(Long slideId) {
        this.slideId = slideId;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Long getFilmId() {
        return filmId;
    }

    public void setFilmId(Long filmId) {
        this.filmId = filmId;
    }

    public Film getSlideFilm() {
        return slideFilm;
    }

    public void setSlideFilm(Film slideFilm) {
        this.slideFilm = slideFilm;
    }

    public List<Film> getFilmList() {
        return filmList;
    }

    public void setFilmList(List<Film> filmList) {
        this.filmList = filmList;
    }

    @Override
    public String toString() {
        return "Slide{" +
                "slideId=" + slideId +
                ", img='" + img + '\'' +
                ", filmId=" + filmId +
                ", slideFilm=" + slideFilm +
                ", filmList=" + filmList +
                '}';
    }
}