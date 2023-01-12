package com.example.demo.service;

import java.util.HashMap;
import java.util.List;

import com.example.demo.vo.TestVO;
import com.example.demo.vo.UserVO;

public interface UserService {

	// 회원가입
	public int insertCustomer(UserVO vo);

	// 로그인
	public UserVO loginCustomer(UserVO vo);
	
	// 구매 뭐시기
	public UserVO payCustomer(UserVO vo);

	// 아이디 중복확인
	public int mIdCheck(String mId);

	// 카카오 회원가입 로그인
	public String getAccessToken(String code);

	public UserVO getUserInfoo(String access_Token);

	// 회원정보 수정
	public int updateCustomer(UserVO vo);

	// 회원정보 출력
	public UserVO getUserInfo(String mId);

	// 회원정보 삭제
	public int deleteInfo(UserVO vo);

	// 회원 정보 삭제를 위한 비밀번호 체크
	public boolean checkPw(String mId, String mPw);

	//전화번호와 이름으로 아이디 찾기
	public UserVO findbytelandname(UserVO vo);

	// 비번 ----------
	//아이디로 회원정보 찾기
		public UserVO findById(UserVO vo);
	//임시 비밀번호 발송
	public Integer tempPw(UserVO vo);


	// 관리자 회원정보 조회
	public List<UserVO> manageUserList(UserVO uservo);
	
	// 관리자 회원정보 상세 조회
	public UserVO getUserInfoAdmin(String mId);

}
