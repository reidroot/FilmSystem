package com.xmut.service;

import com.xmut.entity.PageResult;
import com.xmut.domain.Schedule;

import java.util.List;

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

    /**
     * 根据filmId查询所有Schedule
     * @param filmId
     * @return
     */
    public List<Schedule> loadScheduleByFilmId(Long filmId);

}
