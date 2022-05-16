package com.xmut.mapper;

import com.github.pagehelper.Page;
import com.xmut.domain.Film;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface FilmMapper {
    /* 命名规范：addXxx()  deleteXxx() updateXxx() findXxxById() selectAllXxxs() selectPagedXxxs()
    注意： selectAllXxxs，记得加s */

    public Integer addFilm(Film film);

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
     * 分页查询所有Film
     * @return
     */
    public Page<Film> selectPagedFilms();
}
