package com.xmut.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.xmut.entity.PageResult;
import com.xmut.domain.Schedule;
import com.xmut.mapper.ScheduleMapper;
import com.xmut.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScheduleServiceImpl implements ScheduleService {

    @Autowired
    private ScheduleMapper scheduleMapper;

    public Schedule getScheduleById(Long scheduleId) {
        return scheduleMapper.findScheduleById(scheduleId);
    }

    public PageResult loadPagedSchedules(Integer pageNum, Integer pageSize) {

        //开启分页查询
        PageHelper.startPage(pageNum, pageSize);
        //调用Dao
        Page<Schedule> page = scheduleMapper.selectPagedSchedules();

        return new PageResult(page.getTotal(), page.getResult());
    }
}
