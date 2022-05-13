package com.xmut.mapper;

import com.xmut.domain.Film;
import com.xmut.domain.Schedule;
import com.xmut.domain.User;
import org.springframework.stereotype.Repository;

@Repository
public interface FilmMapper {
    /* 命名规范：addXxx()  deleteXxx() updateXxx() findXxxById() selectAllXxxs() selectPagedXxxs()
    注意： selectAllXxxs，记得加s */
    /**
     * 根据filmId查询film 一对多关联 Remark
     * @param filmId
     * @return
     */
    public Film findFilmById(Long filmId);
}
