package com.model;

import javax.annotation.Generated;

public class User {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Integer userid; //用户编号
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String username;  //用户名
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String realname;  //真实姓名
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String password; //密码
    private String repassword;
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String sex; //性别
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String telephone; //联系电话
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String email;  //邮箱
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String address;  //地址

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Integer getUserid() {
        return userid;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getUsername() {
        return username;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setUsername(String username) {
        this.username = username;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getRealname() {
        return realname;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setRealname(String realname) {
        this.realname = realname;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getPassword() {
        return password;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setPassword(String password) {
        this.password = password;
    }

    public String getRepassword() {
        return repassword;
    }

    public void setRepassword(String repassword) {
        this.repassword = repassword;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getSex() {
        return sex;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setSex(String sex) {
        this.sex = sex;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getTelephone() {
        return telephone;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getEmail() {
        return email;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setEmail(String email) {
        this.email = email;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getAddress() {
        return address;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setAddress(String address) {
        this.address = address;
    }
}