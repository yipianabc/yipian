package com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.PostsMapper;
import com.model.Evaluate;
import com.model.PageData;
import com.model.Posts;

import com.model.Posts;
import com.util.PageBean;

@Service
public class PostsServiceImpl implements PostsService {
	@Autowired
	PostsMapper postsMapper;	
	
	public List<Posts> findAll(){
		return postsMapper.findAll();
	}
	
	public boolean insertPost(Posts post) {
		boolean a=postsMapper.insertPost(post);
		if(a){
			return true;
		}else{
			return false;
		}
	}
	
	
	
	
	public List<Posts> searchPostByPt(String ptitle){
		return postsMapper.searchPostByPt(ptitle);
	}
	
	public PageBean<Posts> findByPage(int currentPage) {//currPage当前页数
		//创建HashMap对象封装
		HashMap<String,Object> map = new HashMap<String,Object>();
		//创建�?个分页对�?
		PageBean<Posts> pageBean = new PageBean<Posts>();
	    //封装当前页数
        pageBean.setCurrPage(currentPage);
		//每页显示的数�?
		int pageSize=10;
		pageBean.setPageSize(pageSize);
		//封装总记录数
		int totalCount = postsMapper.findPostsSize();
		pageBean.setTotalCount(totalCount);
		//封装总页�?
		double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整，�?�记录数除以当前每页显示�?
        pageBean.setTotalPage(num.intValue());
		map.put("start",(currentPage-1)*pageSize);//（当前页�?-1�?*每页显示�?
		map.put("size", pageBean.getPageSize());//每页显示的记录数
		//封装每页显示的数�?
		List<Posts> lists = postsMapper.findByPage(map);
		pageBean.setLists(lists);
		return pageBean;
	}
	
	public PageBean<Posts> searchPostByUidByPage(int currentPage,int userid) {//currPage当前页数
		//创建HashMap对象封装
		HashMap<String,Object> map = new HashMap<String,Object>();
		Map m=new HashMap();
		//创建�?个分页对�?
		PageBean<Posts> pageBean = new PageBean<Posts>();
	    //封装当前页数
        pageBean.setCurrPage(currentPage);
		//每页显示的数�?
		int pageSize=5;
		pageBean.setPageSize(pageSize);
		//封装总记录数
		int totalCount = postsMapper.findPostSizeByUid(userid);
		pageBean.setTotalCount(totalCount);
		//封装总页�?
		double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整，�?�记录数除以当前每页显示�?
        pageBean.setTotalPage(num.intValue());
		m.put("start",(currentPage-1)*pageSize);//（当前页�?-1�?*每页显示�?
		m.put("size", pageBean.getPageSize());//每页显示的记录数
		m.put("userid", userid);
		//封装每页显示的数�?
		List<Posts> lists = postsMapper.searchPostByUidByPage(m);
		
		System.out.println("ccccccccc"+lists.size());
		pageBean.setLists(lists);
		return pageBean;
	}

	public int findPostSizeByUid(int userid) {
		return postsMapper.findPostSizeByUid(userid);
	}

	public List<Evaluate> searchPostByUid(int userid){
		return postsMapper.searchPostByUid(userid);
	}

	public boolean deletePost(int pid) {
		boolean a=postsMapper.deletePost(pid);
		if(a){
			return true;
		}else{
			return false;
		}
	}

	
	public int findPostsSize() {
		return postsMapper.findPostsSize();
	}

	public List<Posts> searchPostByPid(int pid){
		return postsMapper.searchPostByPid(pid);
	}


	
}
