package com.xmut.service;

import com.xmut.domain.Cinema;
import com.xmut.entity.PageResult;

public interface CinemaService {
    /*命名规范：createXxx()  removeXxx() updateXxx() getXxxById() loadAllXxxs() loadPagedXxxs()
    注意: loadAllXxxs复数要加s, 例: loadAllAdmins*/

    /**
     * 新增影院
     * @param cinema
     * @return
     */
    public int createCinema(Cinema cinema);

    /**
     * 分页查询影院信息
     * @param pageNum
     * @param pageSize
     * @return
     */
    public PageResult loadPagedOrders(Integer pageNum, Integer pageSize);
}
