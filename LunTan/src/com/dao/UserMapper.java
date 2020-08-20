package com.dao;
 
import java.util.List;

import com.model.User;
 
public interface UserMapper {
    int insertEntity(User user);
 
    int insertSelective(User record);
 
    int deleteEntity(Integer id);
 
    User getEntityById(Integer id);
 
    int updateEntity(User record);
 
    int updateSelective(User record);
    
    //下面这条是用来实现登陆功能的
    User selectByName(String username);
    

    public List<User> selectAllUsers();
    public int deleteUser(int userid);

	int updateUser(User user);
}