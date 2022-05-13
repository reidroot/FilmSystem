package com.xmut.mapper;

import com.github.pagehelper.Page;
import com.xmut.domain.Order;
import com.xmut.domain.Remark;

import java.util.List;

public interface RemarkMapper {
    /* 命名规范：addXxx()  deleteXxx() updateXxx() findXxxById() selectAllXxxs() selectPagedXxxs()
    注意： selectAllXxxs，记得加s */

    /**
     * 根据remarkId查询Remark  一对一关联 User、Film
     * @param remarkId
     * @return
     */
    public Remark findRemarkById(Long remarkId);

    /**
     * 查询所有Remark
     * @return
     */
    public List<Remark> selectAllRemarks();

    /**
     * 分页查询所有Remark
     * @return
     */
    public Page<Remark> selectPagedRemarks();
}
