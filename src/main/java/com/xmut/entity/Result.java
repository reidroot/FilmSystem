package com.xmut.entity;

import java.io.Serializable;

public class Result<T> {

    private Boolean success;
    private String message;
    private T data;

    public Result(Boolean success, String message) {
        this.success = success;
        this.message = message;
    }

    public Result(Boolean success, String message, T data) {
        this.success = success;
        this.message = message;
        this.data = data;
    }

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
