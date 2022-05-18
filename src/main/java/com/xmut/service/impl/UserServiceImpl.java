package com.xmut.service.impl;

import com.xmut.domain.User;
import com.xmut.mapper.UserMapper;
import com.xmut.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public User login(User user) {
        return userMapper.findUserByEmailAndPwd(user);
    }
}
