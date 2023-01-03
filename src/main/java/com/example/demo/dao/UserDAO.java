package com.example.demo.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.TestVO;
import com.example.demo.vo.UserVO;

@Mapper
public interface UserDAO {

	// 회원 가입
	public int insertCustomer(UserVO vo);

	// 아이디 중복 체크
	//public UserVO checkId(UserVO vo);

	// 로그인
	public UserVO loginCustomer(UserVO vo);
	
	//아이디 중복 체크
	public int mIdCheck(String mId);
}
