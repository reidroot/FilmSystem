package com.xmut.service;


import com.xmut.domain.Order;
import com.xmut.domain.PageResult;
import com.xmut.domain.Remark;

import java.util.List;

public interface RemarkService {
 /*命名规范：createXxx()  removeXxx() updateXxx() getXxxById() loadAllXxxs() loadPagedXxxs()
    注意: loadAllXxxs复数要加s, 例: loadAllAdmins*/
    /**
     * 根据评论ID查找评论信息
     * @param remarkId
     * @return
     */
    public Remark getRemarkById(long remarkId);

    /**
     * 查询所有评论信息
     * @return
     */
    public List<Remark> loadAllRemarks();

    /**
     * 分页查询评论信息
     * @return
     */
    public PageResult loadPagedRemarks(Integer pageNum, Integer pageSize);
}
