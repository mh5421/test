package com.camp.service;



import java.util.List;

import com.camp.domain.GoodsVO;
import com.camp.domain.MemberVO;
import com.camp.domain.PagingVO;


public interface MemberService {
	public MemberVO idCheck_Login( MemberVO vo);
	
	public int insertMember(MemberVO vo);
	public List<MemberVO> listSearch(MemberVO vo);
	public List<MemberVO> listAll();
	public int memberUpdate(MemberVO vo);

	public int memberDelete(MemberVO vo);

	public int allCount();

	public int searchCount(MemberVO vo);

	public List<MemberVO> selectBoard(PagingVO pvo);

	public int productDelete(GoodsVO vo);

	public int productAllCount();

	public List<GoodsVO> productSelect(PagingVO pvo);

	public List<GoodsVO> productListSearch(GoodsVO vo);

	public int productSearchCount(GoodsVO vo);


}
