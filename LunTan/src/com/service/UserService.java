package com.service;

import java.util.List;

import com.model.User;

public interface UserService {
	public int login(String username, String password);
	//public boolean insertEntity(User user);
	public int insertEntity(User user);
	public List<User> selectAllUsers();
	public boolean deleteUser(int userid);
	public User selectByName(String username);
	public boolean updateUser(User user);

} 
