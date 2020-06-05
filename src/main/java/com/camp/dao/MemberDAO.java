package com.camp.dao;

import java.util.List;

import com.camp.domain.GoodsVO;
import com.camp.domain.MemberVO;



public interface MemberDAO {
	
	//회원가입
	public int insertMember(MemberVO vo);
	
	//id중복체크
	public MemberVO idCheck( MemberVO vo );
	
	public List<MemberVO> listSearch(MemberVO vo);
	
	public List<MemberVO> listAll();
	
	public int memberUpdate(MemberVO vo);

	int memberDelete(MemberVO vo);

	int searchCount(MemberVO vo);

	int allCount();
	public int productDelete(GoodsVO vo);
	


	
}
