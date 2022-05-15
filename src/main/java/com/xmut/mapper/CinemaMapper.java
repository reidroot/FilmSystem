package com.xmut.mapper;

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
    public Cinema addCinema(Cinema cinema);
}
