	package com.camp.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.camp.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public int insertMember(MemberVO vo) {
		System.out.println("==>Mybatis insertMemberVO() 호출");
		return mybatis.insert("MemberDAO.insertMember",vo);
	}

}
