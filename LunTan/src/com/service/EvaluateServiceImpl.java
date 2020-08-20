package com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.EvaluateMapper;
import com.model.Evaluate;
import com.model.Posts;
import com.util.PageBean;
@Service
public class EvaluateServiceImpl implements EvaluateService{
	@Autowired
	EvaluateMapper evaMap;
	
	public boolean insertEvaluate(Evaluate eva) {
		boolean a=evaMap.insertEvaluate(eva);
		if(a){
			return true;
		}else{
			return false;
		}
	}
	public int findEvaSize(int pid) {
		return evaMap.findEvaSize(pid);
	}
	
	public int findEvaSizeByUid(int userid) {
		return evaMap.findEvaSizeByUid(userid);
	}
	public List<Evaluate> searchEvaByPid(int pid){
		return evaMap.searchEvaByPid(pid);
	}
	public List<Evaluate> searchEvaByUid(int userid){
		return evaMap.searchEvaByUid(userid);
	}

	
	public PageBean<Posts> findByPage(int currentPage,int pid) {//currPage当前页数
		//创建HashMap对象封装
		HashMap<String,Object> map = new HashMap<String,Object>();
		Map m=new HashMap();
		//创建一个分页对象
		PageBean<Posts> pageBean = new PageBean<Posts>();
	    //封装当前页数
        pageBean.setCurrPage(currentPage);
		//每页显示的数据
		int pageSize=5;
		pageBean.setPageSize(pageSize);
		//封装总记录数
		int totalCount = evaMap.findEvaSize(pid);
		pageBean.setTotalCount(totalCount);
		//封装总页数
		double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整，总记录数除以当前每页显示数
        pageBean.setTotalPage(num.intValue());
		m.put("start",(currentPage-1)*pageSize);//（当前页数-1）*每页显示数
		m.put("size", pageBean.getPageSize());//每页显示的记录数
		m.put("pid", pid);
		//封装每页显示的数据
		List<Posts> lists = evaMap.findByPage(m);
		
		System.out.println("ccccccccc"+lists.size());
		pageBean.setLists(lists);
		return pageBean;
	}
	
	public PageBean<Posts> searchEvaByUidByPage(int currentPage,int userid) {//currPage当前页数
		//创建HashMap对象封装
		HashMap<String,Object> map = new HashMap<String,Object>();
		Map m=new HashMap();
		//创建一个分页对象
		PageBean<Posts> pageBean = new PageBean<Posts>();
	    //封装当前页数
        pageBean.setCurrPage(currentPage);
		//每页显示的数据
		int pageSize=5;
		pageBean.setPageSize(pageSize);
		//封装总记录数
		int totalCount = evaMap.findEvaSizeByUid(userid);
		pageBean.setTotalCount(totalCount);
		//封装总页数
		double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整，总记录数除以当前每页显示数
        pageBean.setTotalPage(num.intValue());
		m.put("start",(currentPage-1)*pageSize);//（当前页数-1）*每页显示数
		m.put("size", pageBean.getPageSize());//每页显示的记录数
		m.put("userid", userid);
		//封装每页显示的数据
		List<Posts> lists = evaMap.searchEvaByUidByPage(m);
		
		System.out.println("ccccccccc"+lists.size());
		pageBean.setLists(lists);
		return pageBean;
	}
	
	
	public boolean deleteEva(int eid) {
		boolean a=evaMap.deleteEva(eid);
		if(a){
			return true;
		}else{
			return false;
		}
	}
	
	public boolean deleteEvaByPid(int pid) {
		boolean a=evaMap.deleteEvaByPid(pid);
		if(a){
			return true;
		}else{
			return false;
		}
	}
}
