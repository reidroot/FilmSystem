package com.xmut.mapper;

import com.github.pagehelper.Page;
import com.xmut.domain.Cinema;
import org.springframework.stereotype.Repository;

@Repository
public interface CinemaMapper {
    /* 命名规范：addXxx()  deleteXxx() updateXxx() findXxxById() selectAllXxxs() selectPagedXxxs()
    注意： selectAllXxxs，记得加s */

    /**
     * 新增Cinema到数据库
     * @param cinema
     * @return
     */
    public int addCinema(Cinema cinema);

    /**
     * 根据cinemaId查询Cinema  一对多关联 Hall
     * @param cinemaId
     * @return
     */
    public Cinema findCinemaById(Long cinemaId);

    /**
     * 根据cinemaId简单查询Cineam  不关联
     * @param cinemaId
     * @return
     */
    public Cinema findEasyCinema(Long cinemaId);

    /**
     * 分页查询所有Cinema(简单查询Cineam)
     * @return
     */
    public Page<Cinema> selectPagedCinemas();

}
