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

	
	public PageBean<Posts> findByPage(int currentPage,int pid) {//currPage��ǰҳ��
		//����HashMap�����װ
		HashMap<String,Object> map = new HashMap<String,Object>();
		Map m=new HashMap();
		//����һ����ҳ����
		PageBean<Posts> pageBean = new PageBean<Posts>();
	    //��װ��ǰҳ��
        pageBean.setCurrPage(currentPage);
		//ÿҳ��ʾ������
		int pageSize=5;
		pageBean.setPageSize(pageSize);
		//��װ�ܼ�¼��
		int totalCount = evaMap.findEvaSize(pid);
		pageBean.setTotalCount(totalCount);
		//��װ��ҳ��
		double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//����ȡ�����ܼ�¼�����Ե�ǰÿҳ��ʾ��
        pageBean.setTotalPage(num.intValue());
		m.put("start",(currentPage-1)*pageSize);//����ǰҳ��-1��*ÿҳ��ʾ��
		m.put("size", pageBean.getPageSize());//ÿҳ��ʾ�ļ�¼��
		m.put("pid", pid);
		//��װÿҳ��ʾ������
		List<Posts> lists = evaMap.findByPage(m);
		
		System.out.println("ccccccccc"+lists.size());
		pageBean.setLists(lists);
		return pageBean;
	}
	
	public PageBean<Posts> searchEvaByUidByPage(int currentPage,int userid) {//currPage��ǰҳ��
		//����HashMap�����װ
		HashMap<String,Object> map = new HashMap<String,Object>();
		Map m=new HashMap();
		//����һ����ҳ����
		PageBean<Posts> pageBean = new PageBean<Posts>();
	    //��װ��ǰҳ��
        pageBean.setCurrPage(currentPage);
		//ÿҳ��ʾ������
		int pageSize=5;
		pageBean.setPageSize(pageSize);
		//��װ�ܼ�¼��
		int totalCount = evaMap.findEvaSizeByUid(userid);
		pageBean.setTotalCount(totalCount);
		//��װ��ҳ��
		double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//����ȡ�����ܼ�¼�����Ե�ǰÿҳ��ʾ��
        pageBean.setTotalPage(num.intValue());
		m.put("start",(currentPage-1)*pageSize);//����ǰҳ��-1��*ÿҳ��ʾ��
		m.put("size", pageBean.getPageSize());//ÿҳ��ʾ�ļ�¼��
		m.put("userid", userid);
		//��װÿҳ��ʾ������
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
