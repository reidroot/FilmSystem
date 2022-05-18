package com.xmut.mapper;

import com.xmut.domain.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    /* 命名规范：addXxx()  deleteXxx() updateXxx() findXxxById() selectAllXxxs() selectPagedXxxs()
    注意： selectAllXxxs，记得加s */

    /**
     * 根据userId查询User
     * @param userId
     * @return
     */
    public User findUserById(Long userId);

    /**
     * 前台登录  (根据用户邮箱和密码查询User)
     * @param user
     * @return
     */
    public User findUserByEmailAndPwd(User user);
}
