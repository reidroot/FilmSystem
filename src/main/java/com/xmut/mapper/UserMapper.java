package com.xmut.mapper;

import com.xmut.domain.User;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    /* 命名规范：addXxx()  deleteXxx() updateXxx() findXxxById() selectAllXxxs() selectPagedXxxs()
    注意： selectAllXxxs，记得加s */

    /**
     * 新增用户
     * @param user
     * @return
     */
    public Integer addUser(User user);

    /**
     * 更新用户
     * @param user
     * @return
     */
    public Integer updateUser(User user);

    /**
     * 根据userId查询User
     * @param userId
     * @return
     */
    public User findUserById(Long userId);

    /**
     * 前台注册邮箱校验 (根据用户邮箱判断是否已注册)
     * @param userEmail
     * @return
     */
    public Integer checkUserByEmail(String userEmail);

    /**
     * 前台登录  (根据用户邮箱和密码查询User)
     * @param user
     * @return
     */
    public User findUserByEmailAndPwd(User user);

    /**
     *  查询所有User
     * @return
     */
    @Select("select * from t_user")
    public List<User> selectAllUsers();
}
