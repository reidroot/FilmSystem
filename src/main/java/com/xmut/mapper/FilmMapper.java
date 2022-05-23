package com.xmut.mapper;

import com.github.pagehelper.Page;
import com.xmut.domain.Film;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface FilmMapper {
    /* 命名规范：addXxx()  deleteXxx() updateXxx() findXxxById() selectAllXxxs() selectPagedXxxs()
    注意： selectAllXxxs，记得加s */

    /**
     * 新增Film
     * @param film
     * @return
     */
    public Integer addFilm(Film film);

    /**
     * 根据filmId修改Film
     * @param film
     * @return
     */
    public Integer updateFilm(Film film);

    /**
     * 根据filmId下架Film
     * @param filmId
     */
    public Integer deleteFilm(Long filmId);

    /**
     * 根据filmId查询film 一对多关联 Remark
     * @param filmId
     * @return
     */
    public Film findFilmById(Long filmId);

    /**
     * 简单查询Film信息
     * @param filmId
     * @return
     */
    public Film findEasyFilmById(Long filmId);

    /**
     * 查询所有Film
     * @return
     */
    public List<Film> selectAllFilms();

    /**
     * 简单查询所有Film
     * @return
     */
    public List<Film> selectAllEasyFilms();

    /**
     * 分页查询所有Film
     * @return
     */
    public Page<Film> selectPagedFilms();

}
