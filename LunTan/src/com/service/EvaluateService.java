package com.service;

import java.util.List;

import com.model.Evaluate;
import com.model.Posts;
import com.util.PageBean;

public interface EvaluateService {
	public boolean insertEvaluate(Evaluate eva);
	int findEvaSize(int pid);
	int findEvaSizeByUid(int userid);
	public List<Evaluate> searchEvaByPid(int pid);
	public boolean deleteEva(int eid);
	public boolean deleteEvaByPid(int pid);
	public List<Evaluate> searchEvaByUid(int userid);
	PageBean<Posts> findByPage(int currentPage,int pid);
	PageBean<Posts> searchEvaByUidByPage(int currentPage,int userid);
}
