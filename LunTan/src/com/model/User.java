package com.model;

import javax.annotation.Generated;

public class User {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Integer userid; //�û����
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String username;  //�û���
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String realname;  //��ʵ����
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String password; //����
    private String repassword;
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String sex; //�Ա�
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String telephone; //��ϵ�绰
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String email;  //����
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String address;  //��ַ

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