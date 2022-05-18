package com.xmut.service;

import com.xmut.domain.User;

public interface UserService {
    /*命名规范：createXxx()  removeXxx() updateXxx() getXxxById() loadAllXxxs() loadPagedXxxs()
    注意: loadAllXxxs复数要加s, 例: loadAllAdmins*/


    /**
     * 前台登录 (根据用户邮箱和密码登录)
     * @param user
     * @return
     */
    public User login(User user);
}
