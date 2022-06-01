package com.xmut.service;

import com.xmut.domain.Slide;

import java.util.List;

public interface SlideService {
    /*命名规范：createXxx()  removeXxx() updateXxx() getXxxById() loadAllXxxs() loadPagedXxxs()
    注意: loadAllXxxs复数要加s, 例: loadAllAdmins*/

    /**
     * 加载所有轮播图
     * @return
     */
    public List<Slide> loadAllSlides();

    /**
     * 根据slideId查询轮播图
     * @param slideId
     * @return
     */
    public Slide getSlideById(Long slideId);

    /**
     * 更新轮播图
     * @param slide
     * @return
     */
    public Integer updateSlide(Slide slide);
}
