package com.xmut.mapper;

import com.xmut.domain.Slide;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SlideMapper {
    /* 命名规范：addXxx()  deleteXxx() updateXxx() findXxxById() selectAllXxxs() selectPagedXxxs()
    注意： selectAllXxxs，记得加s */

    /**
     * 查询所有Slide
     * @return
     */
    public List<Slide> selectAllSlide();

    /**
     * 根据slideId查询Slide
     * @param slideId
     * @return
     */
    public Slide findSlideById(Long slideId);

    /**
     * 更新Slide
     * @param slide
     * @return
     */
    public Integer updateSlide(Slide slide);
}
