package com.xmut.mapper;

import com.github.pagehelper.Page;
import com.xmut.domain.Cinema;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

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
     * 根据cinemaId查询Cinema  一对多关联 Schedule
     * @param cinemaId
     * @return
     */
    public Cinema findCinemaById(Long cinemaId);

    /**
     * 根据cinemaId简单查询Cineam  不关联
     * @param cinemaId
     * @return
     */
    @Select("select * from t_cinema where cinema_id = #{cinemaId}")
    public Cinema findEasyCinema(Long cinemaId);

    /**
     * 查询所有Cinema(简单查询Cineam)
     * @return
     */
    @Select("select * from t_cinema")
    public List<Cinema> selectAllCinemas();

    /**
     * 分页查询所有Cinema(简单查询Cineam)
     * @return
     */
    @Select("select * from t_cinema")
    public Page<Cinema> selectPagedCinemas();

}
