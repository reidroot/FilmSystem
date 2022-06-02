package com.xmut.service.impl;

import com.xmut.domain.Order;
import com.xmut.domain.Remark;
import com.xmut.domain.User;
import com.xmut.mapper.OrderMapper;
import com.xmut.mapper.RemarkMapper;
import com.xmut.mapper.UserMapper;
import com.xmut.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private RemarkMapper remarkMapper;

    public Integer createUser(User user) {
        return userMapper.addUser(user);
    }

    public Integer updateUser(User user) {
        return userMapper.updateUser(user);
    }

    public User getUserById(Long userId) {
        return userMapper.findUserById(userId);
    }

    public List<Remark> loadRemarkByUserId(Long userId) {
        return remarkMapper.selectRemarksByUserId(userId);
    }

    public List<Order> loadOrderByUserId(Long userId) {
        return orderMapper.selectOrdersByUserId(userId);
    }

    public Integer checkUserByEmail(String userEmail) {
        return userMapper.checkUserByEmail(userEmail);
    }

    public User login(User user) {
        return userMapper.findUserByEmailAndPwd(user);
    }

    public List<User> loadAllUsers() {
        return userMapper.selectAllUsers();
    }
}
