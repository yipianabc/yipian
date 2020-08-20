package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.AdminMapper;
import com.model.Admin;
import com.model.User;
@Service("adminService")
@Transactional

public class AdminServiceImp implements AdminService{
	@Autowired
	AdminMapper adMapper;
	
	public List<Admin> selectAllAdmins() {
		// TODO Auto-generated method stub
		return adMapper.selectAllAdmins();
	}

	@Override
	public boolean deleteAdmin(String aname) {
		// TODO Auto-generated method stub
		return adMapper.deleteAdmin(aname)>0;
		
		
		
	}

	@Override
	public boolean updateAdmin(Admin admin) {
		// TODO Auto-generated method stub
		 return adMapper.updateAdmin(admin)>0;
	}

	@Override
	public boolean insertAdmin(Admin admin) {
		return false;
		// TODO Auto-generated method stub
//		return adMapper.insertAdmin(admin)>0;
		
	}

	@Override
	public Admin selectSingleAdmin(String aname) {
		// TODO Auto-generated method stub
	 return	adMapper.selectSingleAdmin(aname);
	}

	 public int insertEntity(Admin admin) {
		Admin b=adMapper.selectAdminByName(admin.getAname());
		if(b==null) {
			
    		if(admin.getApassword().equals(admin.getArepassword())) {
		    	int result= adMapper.insertEntity(admin);
		    	if(result>0) {
		    		return 1; //1表示数据插入成功，注册成�?
		    	}
		    	else return 2;//2表示数据插入失败，注册失�?
    		}else return 3; //3表示两次输入密码不一�?
    	}
		return 4; //4表示该用户已存在
    }

	public boolean login(String aname, String apassword) {
        //调用DAO�?
        Admin a = adMapper.selectAdminByName(aname);
        if (a != null) {
            if (a.getAname().equals(aname) && a.getApassword().equals(apassword))
                return true;
        }
        return false;
    }


}
