package com.xmut.service;

import com.xmut.domain.Admin;

import javax.jws.WebService;

public interface AdminService {
    /*命名规范：createXxx()  removeXxx() updateXxx() getXxxById() loadAllXxxs() loadPagedXxxs()
    注意: loadAllXxxs复数要加s, 例: loadAllAdmins*/

    /**
     * 根据管理员ID查找管理员
     * @param adminId
     * @return
     */
    public Admin getAdminById(long adminId);

    /**
     * 登录 （根据用户名和密码查找管理员）
     * @param admin
     * @return
     */
    public Admin login(Admin admin);
}
