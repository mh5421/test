package com.camp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.camp.domain.GoodsVO;
import com.camp.domain.MemberVO;
import com.camp.domain.PagingVO;
import com.camp.service.MemberService;

@Controller
@RequestMapping("/index")
//요청에 /index가 있을 경우
public class IndexController {//index 컨트롤러
	@Autowired
	private MemberService memberService;
	
	int curCount; //회원리스트에서 현재 검색된 회원 숫자를 저장할 변수 선언
	int allCount; //회원리스트에서 모든 회원의 숫자를 저장한 변수 선언
	
	// index/{step}.do
	//*.do 형태의 요청이 들어 왔을경우
	//header에서 해당 탭으로 이동할때 사용
	@RequestMapping("/{step}.do")
	public String start(@PathVariable String step) {
		
		// WEB-INF/views/index/{step}.jsp 로 이동
		return "index/"+step;
	}


	//회원가입
	// register.do 요청이 있을 경우
	@RequestMapping("register.do")
	public ModelAndView Register(MemberVO vo) {
		
		//서비스를 통해 삽입
		int result = memberService.insertMember(vo);
		String id="";
		String name="";
		String email="";
		if(result ==1) {
			id = vo.getUserId();
			name= vo.getUserName();
			email = vo.getEmail();
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/index/memberJoin_ok");
		mv.addObject("id", id);
		mv.addObject("name", name);
		mv.addObject("email", email);
		
		
		return mv;
		
	}
	
	
	
	//회원리스트 검색
	@RequestMapping(value="/listSearch.do")
	public String listSearch(MemberVO vo,Model model) {
		curCount =memberService.searchCount(vo);
		allCount =memberService.allCount();
		
		
		model.addAttribute("curCount", curCount);
		model.addAttribute("memList",memberService.listSearch(vo));
		model.addAttribute("allCount", allCount);
		
		return "index/memberList";
	}
	
	//상품리스트 검색
	@RequestMapping(value="/productListSearch.do")
	public String productSearch(GoodsVO vo,Model model,PagingVO pvo,@RequestParam(value="nowPage",required=false)String nowPage,@RequestParam(value="cntPerPage",required=false)String cntPerPage,@RequestParam(value="cntHirePage",required=false)String cntHirePage) {
		curCount =memberService.productSearchCount(vo);
		allCount =memberService.productAllCount();
		
		
		model.addAttribute("curCount", curCount);
		model.addAttribute("ProductList",memberService.productListSearch(vo));
		model.addAttribute("allCount", allCount);
		
		
		int total=curCount;
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";

		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "10";
		}

		pvo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", pvo);
		model.addAttribute("ProductList", memberService.productSelect(pvo));		
		return "index/productList";
	}
	
	//회원리스트 전체 출력
	@RequestMapping(value="/memberList.do")
	public void listAll(Model model,PagingVO pvo,@RequestParam(value="nowPage",required=false)String nowPage,@RequestParam(value="cntPerPage",required=false)String cntPerPage,@RequestParam(value="cntHirePage",required=false)String cntHirePage) {
		
		
		allCount =memberService.allCount();
		int total=allCount;
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";

		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "10";
		}

		pvo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", pvo);
		model.addAttribute("memList", memberService.selectBoard(pvo));
		
		curCount=allCount;
		
		model.addAttribute("curCount", curCount);
		model.addAttribute("allCount", allCount);
		
	}
	
	//상품리스트 전체 출력
		@RequestMapping(value="/productList.do")
		public void productlistAll(Model model,PagingVO pvo,@RequestParam(value="nowPage",required=false)String nowPage,@RequestParam(value="cntPerPage",required=false)String cntPerPage,@RequestParam(value="cntHirePage",required=false)String cntHirePage) {
			
			
			allCount =memberService.productAllCount();
			int total=allCount;
			if (nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "10";

			} else if (nowPage == null) {
				nowPage = "1";
			} else if (cntPerPage == null) { 
				cntPerPage = "10";
			}
			
			
			pvo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			
			
			model.addAttribute("paging", pvo);
			model.addAttribute("ProductList", memberService.productSelect(pvo));
			
			curCount=allCount;
			
			model.addAttribute("curCount", curCount);
			model.addAttribute("allCount", allCount);
			
		}
	
	
	@RequestMapping(value= "/memberModify.do")
	public String listSearch2(MemberVO vo,Model model){
		model.addAttribute("memList", memberService.listSearch(vo));
		
		
		
		return "index/memberModify";
		
	}
	@RequestMapping(value="/infoModify.do")
	public String updateMember(MemberVO vo, Model model) {
		model.addAttribute("memList", memberService.listSearch(vo));
		
		return "index/infoModify";
	}
	
	@RequestMapping(value="/Modify.do")
	public String listModify(MemberVO vo) {
	System.out.println("이것은 비밀번호"+vo.getPassword());
	int result= memberService.memberUpdate(vo);
	if(result==1) {
		return "index/listSuccess";
	}
	else
		return "index/listFail";
	
	}
	@RequestMapping(value="listSuccess.do")
	public void listSuccess() {
		
	}
	
	@ResponseBody
	@RequestMapping(value="memberDelete.do")
	public String memberDelete(MemberVO vo) {
		
		String result= Integer.toString(memberService.memberDelete(vo));
	
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/Delete.do")
	public String listDelete(@RequestParam(value="input_check[]")List<String> chArr ,MemberVO vo) {
		int result=0;
		for(String i : chArr) {
			vo.setUserId(i);
			result=memberService.memberDelete(vo);
		}
		System.out.println(result);
		if(result==1) {
		return "listSuccess.do";
		}else
			return "listFail";
	}
	@ResponseBody
	@RequestMapping(value="/ProductDelete.do")
	public String ProductlistDelete(@RequestParam(value="input_check[]")List<Integer> chArr ,GoodsVO vo) {
		int result=0;
		for(int i : chArr) {
			vo.setGoods_id(i);
			result=memberService.productDelete(vo);
		}
		
		if(result==1) {
		return "listSuccess.do";
		}else
			return "listFail";
	}
	
	
	//ajax에서 호출
		@ResponseBody //************* 비동기통신을 할수 있게 해주는 annotation
		@RequestMapping(value="/idCheck.do",produces = "application/text; charset=utf-8")
		public String idCheck(MemberVO vo) {
			MemberVO result=memberService.idCheck_Login(vo);
			String message = "ID 사용가능합니다";
			if(result != null) {
				message = "중복된 아이디가 있습니다";
			}
			return message;
		}
		
	@RequestMapping(value="/graph.do")
	public String grahp() {
		
		return "index/graph";
	}
}
