package com.dao;

import java.util.List;

import com.model.Admin;

public interface AdminMapper {
	public List<Admin> selectAllAdmins();
	public int deleteAdmin(String aname);
	public int updateAdmin(Admin admin);
	//public int insertAdmin(Admin admin);
	public Admin selectSingleAdmin(String aname);
	public int insertEntity(Admin admin);
	public Admin selectAdminByName(String aname);
   
}