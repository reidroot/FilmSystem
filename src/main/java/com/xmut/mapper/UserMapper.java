package com.xmut.mapper;

import com.xmut.domain.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    /* 命名规范：addXxx()  deleteXxx() updateXxx() findXxxById() selectAllXxxs() selectPagedXxxs()
    注意： selectAllXxxs，记得加s */

    public User findUserById(Long userId);
}
