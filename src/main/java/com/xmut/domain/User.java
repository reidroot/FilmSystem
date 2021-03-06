package com.xmut.domain;

import java.io.Serializable;

public class User implements Serializable {

    private Long userId;            //用户ID
    private String userEmail;       //用户邮箱(登录时使用)
    private String userPwd;         //用户昵称
    private String userName;        //用户密码
    private String userPhone;       //用户电话
    private String preference;      //用户偏好
    private String icon;            //用户头像

    public User() {
        super();
    }

    public User(Long userId, String userEmail, String userPwd, String userName, String userPhone, String preference, String icon) {
        this.userId = userId;
        this.userEmail = userEmail;
        this.userPwd = userPwd;
        this.userName = userName;
        this.userPhone = userPhone;
        this.preference = preference;
        this.icon = icon;
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

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getPreference() {
        return preference;
    }

    public void setPreference(String preference) {
        this.preference = preference;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userEmail='" + userEmail + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userName='" + userName + '\'' +
                ", userPhone='" + userPhone + '\'' +
                ", preference='" + preference + '\'' +
                ", icon='" + icon + '\'' +
                '}';
    }
}
