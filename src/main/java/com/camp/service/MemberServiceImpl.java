package com.camp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camp.dao.MemberDAOImpl;
import com.camp.domain.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAOImpl memberDAO;
	
	
	/**
	  * 아이디 중복 체크하는 sql + 로그인 기능 sql
	  */

	  
	  
	  /**
	   * 회원가입 sql
	   */
	   public int insertMember(MemberVO vo )
	   {
		  return memberDAO.insertMember(vo);
	   }
}
