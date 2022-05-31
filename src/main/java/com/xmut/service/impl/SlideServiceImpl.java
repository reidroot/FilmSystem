package com.xmut.service.impl;

import com.xmut.domain.Slide;
import com.xmut.mapper.SlideMapper;
import com.xmut.service.SlideService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SlideServiceImpl implements SlideService {

    @Autowired
    private SlideMapper slideMapper;

    public List<Slide> loadAllSlides() {
        return slideMapper.selectAllSlide();
    }
}
