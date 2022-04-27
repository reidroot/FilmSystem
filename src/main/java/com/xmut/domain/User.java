package com.xmut.domain;

import java.io.Serializable;

public class User implements Serializable {

    private Long userId;            //用户ID
    private String userEmail;       //用户邮箱(登录时使用)
    private String userPwd;         //用户昵称
    private String userName;        //用户密码
    private String preference;      //用户偏好

    public User() {
        super();
    }

    public User(Long userId, String userEmail, String userPwd, String userName, String preference) {
        this.userId = userId;
        this.userEmail = userEmail;
        this.userPwd = userPwd;
        this.userName = userName;
        this.preference = preference;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPreference() {
        return preference;
    }

    public void setPreference(String preference) {
        this.preference = preference;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userEmail='" + userEmail + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userName='" + userName + '\'' +
                ", preference='" + preference + '\'' +
                '}';
    }
}
