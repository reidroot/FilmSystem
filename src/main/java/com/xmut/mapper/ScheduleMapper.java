package com.xmut.mapper;

import com.github.pagehelper.Page;
import com.xmut.domain.Schedule;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ScheduleMapper {
    /* 命名规范：addXxx()  deleteXxx() updateXxx() findXxxById() selectAllXxxs() selectPagedXxxs()
    注意： selectAllXxxs，记得加s */

    /**
     * 新增Schedule
     * @param schedule
     * @return
     */
    public Integer addSchedule(Schedule schedule);

    /**
     * 上架、下架场次信息
     * @param scheduleId
     * @return
     */
    public Integer deleteSchedule(Long scheduleId);

    /**
     * 更新Seat
     * @param schedule
     * @return
     */
    public Integer updateSeat(Schedule schedule);

    /**
     * 更新Schedule信息
     * @param schedule
     * @return
     */
    public Integer updateSchedule(Schedule schedule);

    /**
     * 简单查询Schedule
     * @param scheduleId
     * @return
     */
    public Schedule findEasyScheduleById(Long scheduleId);

    /**
     * 根据scheduleId查询Schedule  一对一关联 Hall、Film  一对多关联 Order
     * @param scheduleId
     * @return
     */
    public Schedule findScheduleById(Long scheduleId);

    /**
     * 分页查询所有Schedule
     * @return
     */
    public Page<Schedule> selectPagedSchedules();

    /**
     * 查询所有Schedule
     * @return
     */
    public List<Schedule> selectAllSchedule();

    /**
     * 查找该影片filmId下的所有场次
     * @param filmId
     * @return
     */
    public List<Schedule> findScheduleByFilmId(Long filmId);

}
