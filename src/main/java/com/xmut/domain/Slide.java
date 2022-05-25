package com.xmut.domain;

import java.io.Serializable;

public class Slide implements Serializable {

    private Long slideId;
    private String img;
    private Long filmId;
    private Film film;

    public Slide() {
        super();
    }

    public Slide(Long slideId, String img, Long filmId, Film film) {
        this.slideId = slideId;
        this.img = img;
        this.filmId = filmId;
        this.film = film;
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

    public Film getFilm() {
        return film;
    }

    public void setFilm(Film film) {
        this.film = film;
    }

    @Override
    public String toString() {
        return "Slide{" +
                "slideId=" + slideId +
                ", img='" + img + '\'' +
                ", filmId=" + filmId +
                ", film=" + film +
                '}';
    }
}
