package com.model;

import java.util.Date;
import javax.annotation.Generated;

public class Evaluate {
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Integer eid; //���۱��
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Integer pid; //ԭ�����
	@Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String etitle;  //��������

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String econtent;  //��������

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Date etime;  //����ʱ��

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private String eimage;  //����ͼƬ
    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    private Integer userid; //�����û����
    public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	

    public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}



    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Integer getEid() {
        return eid;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setEid(Integer eid) {
        this.eid = eid;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getEtitle() {
        return etitle;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setEtitle(String etitle) {
        this.etitle = etitle;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getEcontent() {
        return econtent;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setEcontent(String econtent) {
        this.econtent = econtent;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public Date getEtime() {
        return etime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setEtime(Date etime) {
        this.etime = etime;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public String getEimage() {
        return eimage;
    }

    @Generated("org.mybatis.generator.api.MyBatisGenerator")
    public void setEimage(String eimage) {
        this.eimage = eimage;
    }
}