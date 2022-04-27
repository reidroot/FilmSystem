package com.xmut.service.impl;

import com.xmut.domain.Admin;
import com.xmut.mapper.AdminMapper;
import com.xmut.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;
    public Admin findAdminById(long adminId) {
        return adminMapper.findAdminById(adminId);
    }
}
