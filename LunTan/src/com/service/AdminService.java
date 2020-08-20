package com.service;

import java.util.List;

import com.model.Admin;
import com.model.User;

public interface AdminService {
	public Admin selectSingleAdmin(String aname);
	public List<Admin> selectAllAdmins();
	public boolean deleteAdmin(String aname);
	public boolean updateAdmin(Admin admin);
	public boolean insertAdmin(Admin admin);
	public int insertEntity(Admin admin);
	public boolean login(String username, String password);
}
