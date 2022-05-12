package com.xmut.mapper;

import com.xmut.domain.Schedule;
import org.springframework.stereotype.Repository;

@Repository
public interface ScheduleMapper {
    /* 命名规范：addXxx()  deleteXxx() updateXxx() findXxxById() selectAllXxxs() selectPagedXxxs()
    注意： selectAllXxxs，记得加s */

    public Schedule findScheduleById(Long scheduleId);
}
