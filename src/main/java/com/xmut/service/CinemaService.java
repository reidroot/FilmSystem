package com.xmut.service;

import com.xmut.domain.Cinema;
import com.xmut.entity.PageResult;

import java.util.List;

public interface CinemaService {
    /*命名规范：createXxx()  removeXxx() updateXxx() getXxxById() loadAllXxxs() loadPagedXxxs()
    注意: loadAllXxxs复数要加s, 例: loadAllAdmins*/

    /**
     * 新增影院
     * @param cinema
     * @return
     */
    public Integer createCinema(Cinema cinema);

    /**
     * 更新影院
     * @param cinema
     * @return
     */
    public Integer updateCinema(Cinema cinema);

    /**
     * 简单查询影院信息
     * @param cinemaId
     * @return
     */
    public Cinema findEasyCinemaById(Long cinemaId);

    /**
     * 查询所有影院信息
     * @return
     */
    public List<Cinema> loadAllCinemas();

    /**
     * 分页查询影院信息
     * @param pageNum
     * @param pageSize
     * @return
     */
    public PageResult loadPagedOrders(Integer pageNum, Integer pageSize);
}
