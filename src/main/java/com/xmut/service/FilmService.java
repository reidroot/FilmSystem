package com.xmut.service;

import com.xmut.domain.Film;
import com.xmut.entity.PageResult;

import java.util.List;

public interface FilmService {
    /*命名规范：createXxx()  removeXxx() updateXxx() getXxxById() loadAllXxxs() loadPagedXxxs()
    注意: loadAllXxxs复数要加s, 例: loadAllAdmins*/


    /**
     * 新增影片
     * @param film
     * @return
     */
    public Integer createFilm(Film film);

    /**
     * 修改影片信息
     * @param film
     * @return
     */
    public Integer updateFilm(Film film);

    /**
     * 根据filmId删除影片
     * @param filmId
     */
    public Integer removeFilm(long filmId);

    //-------------------以下为查询----------------------

    /**
     * 根据影片ID查找复杂影片信息
     * @param filmId
     * @return
     */
    public Film getFilmById(long filmId);

    /**
     * 根据影片ID查找简单影片信息
     * @param filmId
     * @return
     */
    public Film getEasyFilmById(long filmId);

    /**
     * 查询所有影片信息
     * @return
     */
    public List<Film> loadAllFilms();

    /**
     * 简单查询所有影片信息
     * @return
     */
    public List<Film> loadAllEasyFilms();

    /**
     * 分页查询影片信息
     * @param pageNum
     * @param pageSize
     * @return
     */
    public PageResult loadPagedFilms(Integer pageNum, Integer pageSize);

}
