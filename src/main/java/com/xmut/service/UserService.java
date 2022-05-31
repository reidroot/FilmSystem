package com.xmut.service;

import com.xmut.domain.User;

import java.util.List;

public interface UserService {
    /*命名规范：createXxx()  removeXxx() updateXxx() getXxxById() loadAllXxxs() loadPagedXxxs()
    注意: loadAllXxxs复数要加s, 例: loadAllAdmins*/

    /**
     * 新增用户
     * @param user
     * @return
     */
    public Integer createUser(User user);

    /**
     * 更新用户
     * @param user
     * @return
     */
    public Integer updateUser(User user);

    /**
     * 根据userId获取用户
     * @param userId
     * @return
     */
    public User getUserById(Long userId);

    /**
     * 前台注册 检查该邮箱是否已经注册过
     * @param userEmail
     * @return
     */
    public Integer checkUserByEmail(String userEmail);

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
