package com.dao;

import java.util.List;
import java.util.Map;

import com.model.Evaluate;
import com.model.Posts;

public interface EvaluateMapper {
	public boolean insertEvaluate(Evaluate eva);
	int findEvaSize(int pid);
	int findEvaSizeByUid(int userid);
	public List<Evaluate> searchEvaByPid(int pid);
	public List<Evaluate> searchEvaByUid(int userid);
	List<Posts> findByPage(Map map);
	List<Posts> searchEvaByUidByPage(Map map);
	public boolean deleteEva(int eid);
	public boolean deleteEvaByPid(int pid);

}