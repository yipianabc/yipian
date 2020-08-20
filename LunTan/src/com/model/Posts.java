package com.model;

import java.util.Date;
import javax.annotation.Generated;

public class Posts {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Integer pid; //���ӱ��

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Integer userid;  //�������

	@Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String ptitle;  //���ӱ���

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String pcontent;  //��������

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Date ptime;  //����ʱ��

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String pimage;  //���Ӹ�ͼ

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Integer getPid() {
        return pid;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setPid(Integer pid) {
        this.pid = pid;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getPtitle() {
        return ptitle;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setPtitle(String ptitle) {
        this.ptitle = ptitle;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getPcontent() {
        return pcontent;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setPcontent(String pcontent) {
        this.pcontent = pcontent;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Date getPtime() {
        return ptime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setPtime(Date ptime) {
        this.ptime = ptime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getPimage() {
        return pimage;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setPimage(String pimage) {
        this.pimage = pimage;
    }
    
    public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}
}