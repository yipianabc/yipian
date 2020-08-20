package com.service;

import java.util.List;

import com.model.Evaluate;
import com.model.Posts;
import com.util.PageBean;

public interface PostsService {
	public List<Posts> findAll();

	public boolean insertPost(Posts post);

	public boolean deletePost(int pid);

	public List<Posts> searchPostByPt(String ptitle);

	PageBean<Posts> searchPostByUidByPage(int currentPage, int userid);

	int findPostsSize();

	int findPostSizeByUid(int userid);

	public List<Evaluate> searchPostByUid(int userid);

	PageBean<Posts> findByPage(int currentPage);

	public List<Posts> searchPostByPid(int pid);
}
