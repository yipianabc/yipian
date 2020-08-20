package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.Admin;
import com.model.User;
import com.service.AdminService;

@Controller


public class AdminController {
	@Autowired
	private AdminService adminService;
	@RequestMapping("/selectadmininfo.do/{aname}")
	public  ModelAndView  selectSingleAdmin(@PathVariable String aname,ModelAndView modelAndView,HttpServletRequest request) 
			throws Exception{
		Admin list = adminService.selectSingleAdmin(aname);
		modelAndView.addObject("admin", list);
		modelAndView.setViewName("admin_update");
		return modelAndView;
		
	}

	@RequestMapping("/adminselect.do")
	public  ModelAndView  selectAllAdmins(ModelAndView modelAndView) 
			throws Exception{
		List<Admin> list = adminService.selectAllAdmins();
		modelAndView.addObject("admin", list);
		modelAndView.setViewName("admin_select");
		return modelAndView;
		
	}
	/*
	@RequestMapping("/adminselectByName.do")
	public  ModelAndView  selectAdminByName(String aname,ModelAndView modelAndView) 
			throws Exception{
		Admin list = adminService.selectAdminByName(aname);
		modelAndView.addObject("admin", list);
		modelAndView.setViewName("admin_info");
		return modelAndView;
		
	}
	*/
	@RequestMapping("/admindelete.do/{aname}")
	public  ModelAndView  deleteAdmin(@PathVariable String aname,ModelAndView modelAndView,HttpServletRequest request) 
			throws Exception{
		//如果删除成功就返回成功页�?
		String msg=null;
		msg=adminService.deleteAdmin(aname)==true?"您已注销":"注销失败";
		modelAndView.addObject("massage",msg);	
		return new ModelAndView("redirect:/adminselect.do");
		
	}
	@RequestMapping(value="updateadmin.do")
	public  ModelAndView  updateAdmin(Admin admin,ModelAndView modelAndView,HttpServletRequest request) 
			throws Exception{
		String msg="";
		try {
		//request.getAttribute("aname1");
		msg=adminService.updateAdmin(admin)==true?"修改成功":"修改失败";
		modelAndView.addObject("message",msg);
		modelAndView.setViewName("admin_update");
		return modelAndView;
		}catch(Exception e) {
			modelAndView.addObject("message","修改失败");
			modelAndView.setViewName("admin_update");
    		return modelAndView;
    	}
		
	}
	/*@RequestMapping("/admin.do/{admin}")
	public  ModelAndView  admin(@PathVariable Admin admin,ModelAndView modelAndView) 
			throws Exception{
		modelAndView.addObject("stList", admin);
		modelAndView.setViewName("updateAdmin");
		return modelAndView;
		
	}*/
	
	
/*
	@RequestMapping(value="/insertadmin.do",method=RequestMethod.POST)
	public  ModelAndView  insertAdmin(@RequestParam("name") String name,@RequestParam("realname") String realname,@RequestParam("password") String password,@RequestParam("repassword") String repassword,@RequestParam("sex") String sex,@RequestParam("telephone") String telephone,@RequestParam("email") String email,@RequestParam("address") String address,ModelAndView modelAndView) 
			throws Exception{
		String msg="";
		if(password.equals(repassword)) {
			Admin admin=new Admin();
			admin.setAname(name);
			admin.setArealname(realname);
			admin.setApassword(password);
			admin.setAsex(sex);
			admin.setAtelephone((long)Integer.parseInt(telephone));
			admin.setAemail(email);
			admin.setAaddress(address);
			msg=adminService.insertAdmin(admin)==true?"增加管理员成�?":"增加管理员失�?";
			
			
		}
		else {
		
			msg="两次密码不正�?";
		}
		modelAndView.addObject("massage", msg);
		modelAndView.setViewName("admin_add");
		return  modelAndView;
		
	}
	*/

	@RequestMapping("/insertadmin.do")
	public ModelAndView register(Admin admin,HttpServletRequest request){
    	int registType=adminService.insertEntity(admin);
    	ModelAndView mav = new ModelAndView();
    	try {
    	switch(registType) {
    	case 1:   		 
            //注册后直接登�?
            mav.addObject("message","添加成功");
            mav.setViewName("admin_add");            
            break;
    	case 2:    		
    		mav.addObject("message","添加失败");
    		mav.setViewName("admin_add");
    		break;
    	case 3:
    		mav.addObject("message","两次输入密码不一�?,请重新输入！");
    		mav.setViewName("admin_add");
    		break;
    	case 4:
    		mav.addObject("message","该用户已存在�?");
    		mav.setViewName("admin_add");
    		break;
    	default:break;
    	}    	
    	return mav;        
    	}catch(Exception e) {
    		mav.addObject("message","注册失败");
    		mav.setViewName("admin_add");
    		return mav;
    	}
		
    }     
	 @RequestMapping("/admin_login.do")
		public ModelAndView login(Admin admin,HttpServletRequest request){
	    	
	    	boolean loginType = adminService.login(admin.getAname(),admin.getApassword());
	    	if(loginType){
	    		//直接使用ModelAndView构�?�方法指定返回的页面名称success
	    		request.setAttribute("aname", admin.getAname());
	        	ModelAndView mav = new ModelAndView();
	        	//使用addObject()设置�?要返回的数据
	        	mav.addObject("message", "登陆成功");
	        	mav.setViewName("admin");
	        	return mav;
	    	}else{
	        	ModelAndView mav = new ModelAndView();
	        	//通过setViewName()方法跳转到指定的页面
	        	//使用addObject()设置�?要返回的数据
	        	mav.addObject("message", "登陆失败");
	        	mav.setViewName("admin_login");
	        	return mav;
	    	}
	    }
	        

}
