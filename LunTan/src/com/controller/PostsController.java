package com.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.Posts;
import com.service.PostsService;
@Controller
public class PostsController {
	@Autowired
	PostsService posts;
	
	@RequestMapping("/showposts.do")
	public ModelAndView findAll(){
		
		//先new�?个ModelAndView对象
		ModelAndView mav=new ModelAndView();
		//以键值队的形式赋�?   然后用对象调用方�? 
		mav.addObject("posts",posts.findAll());
		//要跳转的页面
		mav.setViewName("index");
		//return出来你new的对�?
		return mav;
	}
	
//	//分页显示帖子
	/*
	 * @RequestMapping("/showpostByPage.do") public String
	 * showpostByPage(@RequestParam(value="currentPage",defaultValue="1",required=
	 * false)int currentPage,Model model){ //分页查询 model.addAttribute("pagemsg",
	 * posts.findByPage(currentPage));//回显分页数据 //返回到主�?
	 * 
	 * return "index"; }
	 */
		
		

	
	@RequestMapping("/showposts2.do")
public ModelAndView findAll2(){
		
		//先new�?个ModelAndView对象
		ModelAndView mav=new ModelAndView();
		//以键值队的形式赋�?   然后用对象调用方�? 
		mav.addObject("posts",posts.findAll());
		//要跳转的页面
		mav.setViewName("login_success");
		//return出来你new的对�?
		return mav;
	}
	
	@RequestMapping("/showposts3.do")
	public ModelAndView findAll3(){
			
			//先new�?个ModelAndView对象
			ModelAndView mav=new ModelAndView();
			//以键值队的形式赋�?   然后用对象调用方�? 
			mav.addObject("posts",posts.findAll());
			//要跳转的页面
			mav.setViewName("admin");
			//return出来你new的对�?
			return mav;
		}
	
	@RequestMapping("/addPost.do")
	public ModelAndView insertPost(Posts post,HttpServletRequest request) throws UnsupportedEncodingException{
		request.setCharacterEncoding("UTF-8");
		
		ModelAndView mav=new ModelAndView();
		posts.insertPost(post);
		mav.addObject("message","发帖成功");
		mav.setViewName("posts");
		return mav;
//		return new ModelAndView("redirect:/showpostByPage2.do");
	}
	
	@RequestMapping("/addPost2.do")
	public ModelAndView insertPost2(Posts post,HttpServletRequest request) throws UnsupportedEncodingException{
		request.setCharacterEncoding("UTF-8");
		ModelAndView mav=new ModelAndView();
		posts.insertPost(post);
		mav.addObject("message","发帖成功");
		return new ModelAndView("redirect:/showposts3.do");
	}


//
//		//发帖操作
//		@RequestMapping("/addPost.do")
//		public ModelAndView insertPost(Posts post){
//			posts.insertPost(post);
//			return new ModelAndView("redirect:/showpostByPage2.do");
//		}
		
		
		@RequestMapping("/showpostByPage.do")
		public String  main(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage,Model model){
			//分页查询
			model.addAttribute("pagemsg", posts.findByPage(currentPage));//回显分页数据
			//返回到主页
			
			return "index";
		}
		@RequestMapping("/showpostByPage2.do")
		public ModelAndView  main1(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage,Model model,HttpServletRequest request){
			//分页查询
			model.addAttribute("pagemsg", posts.findByPage(currentPage));//回显分页数据
			//返回到主页
			ModelAndView mav=new ModelAndView();
			Map map=new HashMap();
			if(request.getParameter("userid")!=null) {
				Integer userid=Integer.parseInt((String) request.getParameter("userid"));
				request.setAttribute("userid", userid);
			}
			if(request.getAttribute("uid")!=null) {
				String uid=(String)request.getAttribute("uid");
				request.setAttribute("uid", uid);
			}
			mav.setViewName("login_success");
			return mav;
		}

		@RequestMapping("/searchPost.do")
		public ModelAndView searchPostByPt(String ptitle){
			//先new�?个ModelAndView对象
			ModelAndView mav=new ModelAndView();
			//以键值队的形式赋�?   然后用对象调用方法 
			List p=posts.searchPostByPt(ptitle);
			mav.addObject("posts",p);
			//要跳转的页面
			mav.setViewName("showpost");
			//return出来你new的对象
			return mav;
		}

		@RequestMapping("/searchPost2.do")
		public ModelAndView searchPostByPt2(String ptitle){
			//先new�?个ModelAndView对象
			ModelAndView mav=new ModelAndView();
			//以键值队的形式赋�?   然后用对象调用方法/
			List p=posts.searchPostByPt(ptitle);
			mav.addObject("posts",p);
			//要跳转的页面
			mav.setViewName("showpost2");
			//return出来你new的对象
			return mav;
		}
		
		@RequestMapping("/searchPostByPid.do")
		public ModelAndView searchPostByPid(int pid){
			ModelAndView mav=new ModelAndView();
			List p=posts.searchPostByPid(pid);
			mav.addObject("posts",p);
			//要跳转的页面
			mav.setViewName("postEva");
			//return出来你new的对�?
			return mav;
		}
		
		
		@RequestMapping("/searchPostByUidByPage.do")
		public ModelAndView searchPostByUidByPage(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage,Model model,HttpServletRequest request){
			HttpSession session=request.getSession();
			Object u=session.getAttribute("userid");
			Integer uid=Integer.parseInt(u.toString());
			model.addAttribute("pagemsg", posts.searchPostByUidByPage(currentPage,uid));//暂时�?2
			
			ModelAndView mav=new ModelAndView();
			List list=posts.searchPostByUid(uid);
			mav.addObject("posts",list);
			//要跳转的页面
			mav.setViewName("showPostsByUser");
			return mav;
		}

		@RequestMapping("/deletepost.do")
		public ModelAndView deletePost(int pid){
			posts.deletePost(pid);
			Map map= new HashMap();
			map.put("pid",pid);
			return new ModelAndView("redirect:/deleteEvaByPid.do",map);
		}

		
}
