package com.camp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.camp.domain.MemberVO;
import com.camp.service.MemberService;

@Controller
@RequestMapping("/index")
public class IndexController {
	
	
	@RequestMapping("/{step}.do")
	public String start(@PathVariable String step) {
		
		
		return "index/"+step;
	}
	@Autowired
	private MemberService service;
	
	@RequestMapping("register.do")
	public ModelAndView Register(MemberVO vo) {
		int result = service.insertMember(vo);
		String id="";
		String name="";
		String pw="";
		if(result ==1) {
			id = vo.getUserId();
			name= vo.getUserName();
			pw = vo.getPassword();
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/index/memberJoin_ok");
		mv.addObject("id", id);
		mv.addObject("name", name);
		mv.addObject("pw", pw);
		
		
		return mv;
		
	}
	
}
