package com.xmut.service;

import com.xmut.domain.Admin;

public interface AdminService {

    /**
     * 根据管理员ID查找管理员
     * @param adminId
     * @return
     */
    public Admin findAdminById(long adminId);

    /**
     * 登录
     * @param admin
     * @return
     */
    public Admin login(Admin admin);
}
