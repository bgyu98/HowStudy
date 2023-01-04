package com.example.demo.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.UserVO;

@Mapper
public interface UserDAO {

	// 회원 가입
	public int insertCustomer(UserVO vo);

	// 아이디 중복 체크
	public UserVO checkId(UserVO vo);

	// 로그인
	public UserVO loginCustomer(UserVO vo);
	
	//회원정보 수정
	public int updateCustomer(UserVO vo);
	
	//회원정보 조회
	public UserVO getUserInfo(String mId);
	
	//회원정보 삭제
	public int deleteInfo(UserVO vo);
	
	// 회원 정보 삭제를 위한 비밀번호 체크
	public boolean checkPw(String mId, String mPw);
		
	
}
