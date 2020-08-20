package com.service;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserMapper;
import com.model.User;
 
@Service
public class UserServiceImpl implements UserService{
	 @Autowired
	 UserMapper userMapper;
	 
    //登录方法的实�?,从jsp页面获取username与password
	 public int login(String username, String password) {
	        //调用DAO�?
	        User user = userMapper.selectByName(username);
	        if (user != null) {
	            if (user.getUsername().equals(username) && user.getPassword().equals(password))
	                return 1;  //密码匹配成功
	            else return 2; //密码错误
	        }
	        return 3; //用户不存�?
	    }
    //注册方法的实�?
    public int insertEntity(User user) {
    	User a=userMapper.selectByName(user.getUsername());
    	if(a==null) {
    		if(user.getPassword().equals(user.getRepassword())) {
		    	int result= userMapper.insertEntity(user);
		    	if(result>0) {
		    		return 1; //1表示数据插入成功，注册成�?
		    	}
		    	else return 2;//2表示数据插入失败，注册失�?
    		}else return 3; //3表示两次输入密码不一�?
    	}
		return 4; //4表示该用户已存在
    }
    public List<User> selectAllUsers() {
		// TODO Auto-generated method stub
		return userMapper.selectAllUsers();
	}

	@Override
	public boolean deleteUser(int userid) {
		// TODO Auto-generated method stub
		return userMapper.deleteUser(userid)>0;
	}
	@Override
	public User selectByName(String username) {
		// TODO Auto-generated method stub
		return userMapper.selectByName(username);
	}
	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.updateUser(user)>0;
	}


}
    
