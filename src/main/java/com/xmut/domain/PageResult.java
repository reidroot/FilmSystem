package com.xmut.domain;

import java.io.Serializable;
import java.util.List;

public class PageResult implements Serializable {
    private Long total;      // 总数
    private List rows;       // 返回的数据集合

    public PageResult(Long total, List rows) {
        super();
        this.total = total;
        this.rows = rows;
    }

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public List getRows() {
        return rows;
    }

    public void setRows(List rows) {
        this.rows = rows;
    }
}
