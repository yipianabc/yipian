package com.controller;
 
 
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Admin;
import com.model.User;
import com.service.UserService;
 
//@Controller注解用于标示本类为web层控制组�?
@Controller
 
//@SessionAttributes("user")
//@Scope("prototype")
public class UserController {
 
    @Autowired
    UserService userService;
    
    //使用ModelAndView控制页面跳转和传递数�?
    @RequestMapping("/login.do")
   	public ModelAndView login(User user,HttpServletRequest request){    	
       	int loginType = userService.login(user.getUsername(),user.getPassword());
       	//直接使用ModelAndView构�?�方法指定返回的页面
       	ModelAndView mav = new ModelAndView();
       	switch(loginType) {
       	case 1:   		 
               //登陆成功
               mav.addObject("message","登录成功!");
               User user1=userService.selectByName(user.getUsername());
               HttpSession session=request.getSession();
               session.setAttribute("userid", user1.getUserid());
               session.setAttribute("username", user1.getUsername());

//               Map m =new HashMap();
//               m.put("userid",user1.getUserid());
               return new ModelAndView("redirect:/showpostByPage2.do");
       	case 2:    		
       		mav.addObject("message","密码错误�?");
       		mav.setViewName("login");
       		break;
       	case 3:
       		mav.addObject("message","用户不存在！");
       		mav.setViewName("login");
       		break;
       	default:break;
       	}    	
       	return mav;        
       }
        
/*    @RequestMapping("/login.do")
	public String login(User user,HttpServletRequest request){
    	//调用Service�?
    	boolean loginType = userService.login(user.getUsername(),user.getPassword());
    	//登陆成功
    	if(loginType){
    			//如果验证通过,则将用户信息传到前台
    			request.setAttribute("user",user);
    			//并跳转到success.jsp页面
    			return "success";
    	//登陆失败
    	}else{
    		request.setAttribute("message","用户名密码错误！");
    		return "error";
    	}
    }*/
    
    
    @RequestMapping("/register.do")
    public ModelAndView register(User user,HttpServletRequest request){
    	int registType=userService.insertEntity(user);
    	ModelAndView mav = new ModelAndView();
    	try {
    	switch(registType) {
    	case 1:   		 
            //注册后直接登�?
    		mav.addObject("message","注册成功,，已登陆!");
            return new ModelAndView("redirect:/showposts2.do");             
    	case 2:    		
    		mav.addObject("message","注册失败");
    		mav.setViewName("register");
    		break;
    	case 3:
    		mav.addObject("message","两次输入密码不一�?,请重新输入！");
    		mav.setViewName("register");
    		break;
    	case 4:
    		mav.addObject("message","该用户已存在�?");
    		mav.setViewName("register");
    		break;
    	default:break;
    	}    	
    	return mav;        
    	}catch(Exception e) {
    		mav.addObject("message","注册失败");
    		mav.setViewName("register");
    		return mav;
    	}
		
    }     
    
    

    @RequestMapping("/selectalluser.do")
    public ModelAndView selectAllUsers(ModelAndView modelandview) {
    	List<User> list=userService.selectAllUsers();
    	modelandview.addObject("user",list);
    	modelandview.setViewName("user_select");
    	return  modelandview;	
    	
    	
    }
    @RequestMapping("/deleteuser.do/{userid}")
    public ModelAndView deleteUser(@PathVariable int userid,ModelAndView modelandview) {
    	String msg="";
    	msg=userService.deleteUser(userid)==true?"删除用户成功":"删除失败";
    	modelandview.addObject("massage",msg);
    	return new ModelAndView("redirect:/selectalluser.do");
    	
    	
    }

    @RequestMapping("/selectOneuser.do")
    public ModelAndView selectOneUser(String username,ModelAndView modelAndview) {
    	User list = userService.selectByName(username);
		modelAndview.addObject("user", list);
		modelAndview.setViewName("my_info");
		return modelAndview;	
    	
    	
    }
    @RequestMapping(value="updateuser.do")
	public  ModelAndView  updateUser(User user,ModelAndView modelAndView,HttpServletRequest request) 
			throws Exception{
		String msg="";
		try {
		//request.getAttribute("aname1");
		msg=userService.updateUser(user)==true?"修改成功":"修改失败";
		modelAndView.addObject("message",msg);
		modelAndView.setViewName("my_info");
		return modelAndView;
		}catch(Exception e) {
			modelAndView.addObject("message","修改失败");
			modelAndView.setViewName("my_info");
			e.printStackTrace();
    		return modelAndView;
    	}
		
	}
    
    }
    
    