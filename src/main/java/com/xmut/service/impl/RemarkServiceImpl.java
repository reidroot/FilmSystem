package com.xmut.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.xmut.domain.Order;
import com.xmut.domain.PageResult;
import com.xmut.domain.Remark;
import com.xmut.mapper.OrderMapper;
import com.xmut.mapper.RemarkMapper;
import com.xmut.service.RemarkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RemarkServiceImpl implements RemarkService {

    @Autowired
    private RemarkMapper remarkMapper;

    public Remark getRemarkById(long remarkId) {
        return remarkMapper.findRemarkById(remarkId);
    }

    public List<Remark> loadAllRemarks() {
        return remarkMapper.selectAllRemarks();
    }

    public PageResult loadPagedRemarks(Integer pageNum, Integer pageSize) {

        //开启分页查询
        PageHelper.startPage(pageNum, pageSize);
        //调用Dao
        Page<Remark> page = remarkMapper.selectPagedRemarks();
        return new PageResult(page.getTotal(), page.getResult());
    }
}
