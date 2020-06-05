package com.camp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camp.dao.MemberDAOImpl;
import com.camp.domain.GoodsVO;
import com.camp.domain.MemberVO;
import com.camp.domain.PagingVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAOImpl memberDAO;
	
	
	/**
	  * 아이디 중복 체크하는 sql + 로그인 기능 sql
	  */
	  public MemberVO idCheck_Login(MemberVO vo)
	  {
		  return memberDAO.idCheck(vo);
	  }
	  
	  
	  /**
	   * 회원가입 sql
	   */
	   public int insertMember(MemberVO vo )
	   {
		   System.out.println("여기는 서비스"+vo.getEmailOk());
		   System.out.println(vo.getSmsOk());
		  return memberDAO.insertMember(vo);
	   }
	   
	   public List<MemberVO> listSearch(MemberVO vo) {
		   
		   return memberDAO.listSearch(vo);		   
	   }
	   
	   
	   public List<MemberVO> listAll(){
		   return memberDAO.listAll();
	   }
	   public int memberUpdate(MemberVO vo) {
		   return memberDAO.memberUpdate(vo);
	   }
	   public int memberDelete(MemberVO vo) {
		   return memberDAO.memberDelete(vo);
	   }
	   public int allCount() {
		   return memberDAO.allCount();
	   }
	   public int searchCount(MemberVO vo) {
		   return memberDAO.searchCount(vo);
	   }


	   public List<MemberVO> selectBoard(PagingVO pvo) {
		return memberDAO.selectBoard(pvo);
	   }


	@Override
	public int productDelete(GoodsVO vo) {
		
		return memberDAO.productDelete(vo);
	}


	@Override
	public int productAllCount() {
		
		return memberDAO.productAllCount();
	}


	@Override
	public List<GoodsVO> productSelect(PagingVO pvo) {
		
		return memberDAO.productSelect(pvo);
	}


	@Override
	public List<GoodsVO> productListSearch(GoodsVO vo) {
		// TODO Auto-generated method stub
		return memberDAO.productListSearch(vo);		
	}


	


	@Override
	public int productSearchCount(GoodsVO vo) {
		return memberDAO.productSearchCount(vo);
	}
	  
}
