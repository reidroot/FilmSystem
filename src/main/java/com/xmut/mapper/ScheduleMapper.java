package com.xmut.mapper;

import com.github.pagehelper.Page;
import com.xmut.domain.Schedule;
import org.springframework.stereotype.Repository;

@Repository
public interface ScheduleMapper {
    /* 命名规范：addXxx()  deleteXxx() updateXxx() findXxxById() selectAllXxxs() selectPagedXxxs()
    注意： selectAllXxxs，记得加s */

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

}
