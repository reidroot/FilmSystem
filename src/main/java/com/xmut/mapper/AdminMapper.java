package com.xmut.mapper;

import com.xmut.domain.Admin;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminMapper {
    /* 命名规范：addXxx()  deleteXxx() updateXxx() findXxxById() selectAllXxxs() selectPagedXxxs()
    注意： selectAllXxxs，记得加s */

    /**
     * 根据adminId查询Admin
     * @param adminId
     * @return
     */
    public Admin findAdminById(Long adminId);

    /**
     * 登录 （根据用户名和密码查询Admin）
     * @param admin
     * @return
     */
    public Admin findAdminByNameAndPwd(Admin admin);

}
