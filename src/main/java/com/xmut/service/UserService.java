package com.xmut.service;

import com.xmut.domain.User;

import java.util.List;

public interface UserService {
    /*命名规范：createXxx()  removeXxx() updateXxx() getXxxById() loadAllXxxs() loadPagedXxxs()
    注意: loadAllXxxs复数要加s, 例: loadAllAdmins*/

    /**
     * 前台登录 (根据用户邮箱和密码登录)
     * @param user
     * @return
     */
    public User login(User user);

    /**
     * 查询所有用户信息
     * @return
     */
    public List<User> loadAllUsers();
}
