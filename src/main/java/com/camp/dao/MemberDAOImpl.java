	package com.camp.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.camp.domain.GoodsVO;
import com.camp.domain.MemberVO;
import com.camp.domain.PagingVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	

	
	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("MemberDAO.idCheck", vo);
		
		//하나 받으면 selectOne 여러개 selectList
	}
	
	@Override
	public int insertMember(MemberVO vo) {
		System.out.println("==>MemberMapper insertMemberVO() 호출");
		return mybatis.insert("MemberDAO.insertMember",vo);
	}
	
	public List<MemberVO> listSearch(MemberVO vo){
		System.out.println("==>MemberMapper listSearch() 호출");
		return mybatis.selectList("MemberDAO.listSearch",vo);
	}

	@Override
	public List<MemberVO> listAll() {
		System.out.println("==>MemberMapper listAll() 호출");
		return mybatis.selectList("MemberDAO.listAll");
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		System.out.println("==>MemberMapper memberUpdate() 호출");
		return mybatis.update("MemberDAO.memberUpdate",vo);
	}
	
	@Override
	public int memberDelete(MemberVO vo) {
		System.out.println("==>MemberMapper memberDelete() 호출");
		return mybatis.delete("MemberDAO.memberDelete",vo);
	}
	
	@Override
	public int allCount() {
		System.out.println("==>MemberMapper allCount() 호출");
		return mybatis.selectOne("MemberDAO.allCount");
	}	
	@Override
	public int searchCount(MemberVO vo) {
		System.out.println("==>MemberMapper searchCount() 호출");
		return mybatis.selectOne("MemberDAO.searchCount",vo);
	}

	public List<MemberVO> selectBoard(PagingVO pvo) {
		System.out.println("==>MemberMapper selectBoard() 호출");
		return mybatis.selectList("MemberDAO.selectBoard",pvo);
	}

	@Override
	public int productDelete(GoodsVO vo) {
		System.out.println("==>MemberMapper productDelete() 호출");
		return mybatis.delete("MemberDAO.productDelete",vo);
	}

	public int productAllCount() {
		System.out.println("==>MemberMapper productAllCount() 호출");
		return mybatis.selectOne("MemberDAO.productAllCount");
	}

	public List<GoodsVO> productSelect(PagingVO pvo) {
		System.out.println("==>MemberMapper productSelect() 호출");
		return mybatis.selectList("MemberDAO.productSelect",pvo);
	}

	public List<GoodsVO> productListSearch(GoodsVO vo) {
		System.out.println("==>MemberMapper productListSearch() 호출");
		return mybatis.selectList("MemberDAO.productListSearch",vo);
	}

	public int productSearchCount(GoodsVO vo) {
		System.out.println("==>MemberMapper productSearchCount() 호출");
		return mybatis.selectOne("MemberDAO.productSearchCount",vo);
	}
	
	
	
	

}
