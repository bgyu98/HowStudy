package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.MembershipVO;
import com.example.demo.vo.UserVO;

public interface MembershipService {
	
	//티켓 구매 
	public void buyTicket(MembershipVO vo);

	//구매내역 이메일 발송 -----
	//아이디로 구매내역 조회
	public MembershipVO findById(MembershipVO mvo);
	//이메일 발송
	public String sendemail(MembershipVO mvo);

	// 관라지 회원 상세내역확인
	public List<MembershipVO> managerUserMembership(String mId);


}
