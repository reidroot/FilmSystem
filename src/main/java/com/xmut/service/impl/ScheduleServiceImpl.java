package com.xmut.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.xmut.entity.PageResult;
import com.xmut.domain.Schedule;
import com.xmut.mapper.ScheduleMapper;
import com.xmut.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScheduleServiceImpl implements ScheduleService {

    @Autowired
    private ScheduleMapper scheduleMapper;

    public Integer createSchedule(Schedule schedule) {
        return scheduleMapper.addSchedule(schedule);
    }

    public Integer removeSchedule(Long scheduleId) {
        return scheduleMapper.deleteSchedule(scheduleId);
    }

    public Integer updateSeat(Schedule schedule) {
        return scheduleMapper.updateSeat(schedule);
    }

    public Integer updateSchedule(Schedule schedule) {
        return scheduleMapper.updateSchedule(schedule);
    }

    public Schedule getEasyScheduleById(Long scheduleId) {
        return scheduleMapper.findEasyScheduleById(scheduleId);
    }

    public Schedule getScheduleById(Long scheduleId) {
        return scheduleMapper.findScheduleById(scheduleId);
    }

    public List<Schedule> loadAllSchedule() {
        return scheduleMapper.selectAllSchedule();
    }

    public PageResult loadPagedSchedules(Integer pageNum, Integer pageSize) {

        //开启分页查询
        PageHelper.startPage(pageNum, pageSize);
        //调用Dao
        Page<Schedule> page = scheduleMapper.selectPagedSchedules();

        return new PageResult(page.getTotal(), page.getResult());
    }

    public List<Schedule> loadScheduleByFilmId(Long filmId) {
        return scheduleMapper.findScheduleByFilmId(filmId);
    }
}
