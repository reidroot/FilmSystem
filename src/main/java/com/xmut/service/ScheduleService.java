package com.xmut.service;

import com.xmut.domain.PageResult;
import com.xmut.domain.Schedule;

public interface ScheduleService {
    /*命名规范：createXxx()  removeXxx() updateXxx() getXxxById() loadAllXxxs() loadPagedXxxs()
    注意: loadAllXxxs复数要加s, 例: loadAllAdmins*/

    /**
     * 根据场次ID查找场次信息
     * @param scheduleId
     * @return
     */
    public Schedule getScheduleById(Long scheduleId);

    /**
     * 分页查询场次信息
     * @param pageNum
     * @param pageSize
     * @return
     */
    public PageResult loadPagedSchedules(Integer pageNum, Integer pageSize);

}
