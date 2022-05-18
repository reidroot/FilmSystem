package com.xmut.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.xmut.domain.Cinema;
import com.xmut.entity.PageResult;
import com.xmut.mapper.CinemaMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CinemaServiceImpl implements com.xmut.service.CinemaService {

    @Autowired
    private CinemaMapper cinemaMapper;

    public int createCinema(Cinema cinema) {
        return cinemaMapper.addCinema(cinema);
    }

    public List<Cinema> loadAllCinemas() {
        return cinemaMapper.selectAllCinemas();
    }

    public PageResult loadPagedOrders(Integer pageNum, Integer pageSize) {

        //开启分页查询
        PageHelper.startPage(pageNum, pageSize);
        //调用Dao
        Page<Cinema> page = cinemaMapper.selectPagedCinemas();

        return new PageResult(page.getTotal(), page.getResult());
    }
}
