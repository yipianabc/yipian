package com.model;

import java.util.List;

public class PageData {
	/*
	 * 实现分页，需要确定以下参数：
                      分页的数�? �?  data
                      当前�? pageNo
                      每页显示的条�?  pageSize
                       总条�?   totalCount
                      总页�?   totalPage =   totalCount%pageSize ==0 ? totalCount/pageSize  :(totalCount/pageSize)+1;

	 */
	
	private List data;
	private Integer pageNo;
	private Integer pageSize;
	private Integer totalCount;
	private Integer totalPage;	
	//封装
	public List getData() {
		return data;
	}
	public void setData(List data) {
		this.data = data;
	}
	public Integer getPageNo() {
		return pageNo;
	}
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}	
	//构�?�方�?
	public PageData() {
		super();
	}
	public PageData(List data, Integer pageNo, Integer pageSize,
			Integer totalCount) {
		super();
		this.data = data;
		this.pageNo = pageNo;
		this.pageSize = pageSize;
		this.totalCount = totalCount;
		this.totalPage  = totalCount%pageSize ==0 ? totalCount/pageSize  :(totalCount/pageSize)+1;
	}
}
