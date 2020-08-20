package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.model.Evaluate;
import com.model.Posts;

public interface PostsMapper {
	public List<Posts> findAll();
	public boolean insertPost(Posts post);
	public boolean deletePost(int pid);

	public List<Posts> searchPostByPt(String ptitle);
	List<Posts> searchPostByUidByPage(Map m);
	List<Posts> findByPage(HashMap<String,Object> map);
	int findPostsSize();
	int findPostSizeByUid(int userid);
	public List<Evaluate> searchPostByUid(int userid);
	public List<Posts> searchPostByPid(int pid);
}
