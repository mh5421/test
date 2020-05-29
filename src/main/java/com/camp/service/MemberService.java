package com.camp.service;

import org.springframework.stereotype.Service;

import com.camp.domain.MemberVO;

@Service("memberService")
public interface MemberService {
	
	public int insertMember(MemberVO vo);
}
