package com.example.demo.service;

import com.example.demo.vo.TestVO;
import com.example.demo.vo.UserVO;

public interface UserService {

	// 회원가입
	public int insertCustomer(UserVO vo);

	// id 중복 체크
	public UserVO checkId(UserVO vo);

	// 로그인
	public UserVO loginCustomer(UserVO vo);
	
	// 회원정보 수정
	public int updateCustomer(UserVO vo);

	// 회원정보 출력
	public UserVO getUserInfo(String mId);
	
	//회원정보 삭제
	public int deleteInfo(UserVO vo);
	
	// 회원 정보 삭제를 위한 비밀번호 체크
	public boolean checkPw(String mId, String mPw);
	
	
}
