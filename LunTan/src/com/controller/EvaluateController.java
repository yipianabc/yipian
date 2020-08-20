package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.Evaluate;
import com.model.UserEvaluate;
import com.service.EvaluateService;
@Controller
public class EvaluateController {
	@Autowired
	EvaluateService evaService;
	
	//回复帖操�?
	@RequestMapping("/addEvaluate.do")
	public ModelAndView insertEvaluate(Evaluate eva){
		System.out.println(eva.getEcontent());
		System.out.println(eva.getEtitle());
		System.out.println(eva.getPid());
		System.out.println(eva.getUserid());
		evaService.insertEvaluate(eva);
		Map map= new HashMap();
		map.put("pid",eva.getPid());
		return new ModelAndView("redirect:/showpostEvaByPage.do",map);
	}
	
	//根据pid查找评论
	@RequestMapping("/searchEvaByPid.do")
	public ModelAndView searchEvaByPid(Integer pid,HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		Map map2= new HashMap();
		Integer pp=Integer.parseInt(request.getParameter("pid"));
		List<Evaluate> e =evaService.searchEvaByPid(pp);
		if(e!=null) {
			mav.addObject("eva",e);
		}
		mav.setViewName("post");
		return mav;
	}
	
	//分页显示评论
	@RequestMapping("/showpostEvaByPage.do")
	public ModelAndView findPostEvaByPage(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage,Model model,int pid){
		model.addAttribute("evaluate", evaService.findByPage(currentPage,pid));
		ModelAndView mav=new ModelAndView();
		mav.addObject("eva",evaService.searchEvaByPid(pid));
		mav.setViewName("postEva");
		return mav;
	}
	
	
	
	//删除评论
	@RequestMapping("/deleteEva.do")
	public ModelAndView deleteEva(Integer eid){
		evaService.deleteEva(eid);
		return new ModelAndView("redirect:/searchEvaByUidByPage.do");
	}
	
	//按照pid删除评论
	@RequestMapping("/deleteEvaByPid.do")
	public ModelAndView deleteEvaByPid(Integer pid,HttpServletRequest request){
		Map map2= new HashMap();
		Integer p=Integer.parseInt(request.getParameter("pid"));
		evaService.deleteEvaByPid(p);
		return new ModelAndView("redirect:/searchPostByUidByPage.do");
	}
	
	
	//根据userid查找评论并分页显�?
	@RequestMapping("/searchEvaByUidByPage.do")
	public ModelAndView searchEvaByUidByPage(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage,Model model,HttpServletRequest request){
		HttpSession session=request.getSession();
		Object u=session.getAttribute("userid");
		Integer uid=Integer.parseInt(u.toString());
		model.addAttribute("evaluate", evaService.searchEvaByUidByPage(currentPage,uid));//暂时�?2
		
		ModelAndView mav=new ModelAndView();
		List eva=evaService.searchEvaByUid(uid);
		mav.addObject("eva",eva);
		//要跳转的页面
		mav.setViewName("showEvaluate");
		return mav;
	}
	
}
