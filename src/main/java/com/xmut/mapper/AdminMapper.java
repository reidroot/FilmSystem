package com.xmut.mapper;

import com.xmut.domain.Admin;
import org.apache.ibatis.annotations.Select;

public interface AdminMapper {

    public Admin findAdminById(Long adminId);

    public Admin findAdminByNameAndPwd(Admin admin);

}
