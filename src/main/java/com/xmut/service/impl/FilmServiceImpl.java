package com.xmut.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.xmut.domain.Film;
import com.xmut.entity.PageResult;
import com.xmut.mapper.FilmMapper;
import com.xmut.service.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FilmServiceImpl implements FilmService {

    @Autowired
    private FilmMapper filmMapper;

    public Integer createFilm(Film film) {
        return filmMapper.addFilm(film);
    }

    public Integer updateFilm(Film film) {
        return filmMapper.updateFilm(film);
    }

    public Integer removeFilm(long filmId) {
        return filmMapper.deleteFilm(filmId);
    }

    public Film getFilmById(long filmId) {
        return filmMapper.findFilmById(filmId);
    }

    public Film getEasyFilmById(long filmId) {
        return filmMapper.findEasyFilmById(filmId);
    }

    public List<Film> loadAllFilms() {
        return filmMapper.selectAllFilms();
    }

    public List<Film> loadAllEasyFilms() {
        return filmMapper.selectAllEasyFilms();
    }

    public PageResult loadPagedFilms(Integer pageNum, Integer pageSize) {

        //开启分页查询
        PageHelper.startPage(pageNum, pageSize);
        //调用Dao
        Page<Film> page = filmMapper.selectPagedFilms();

        return new PageResult(page.getTotal(), page.getResult());
    }
}
