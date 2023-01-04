package com.example.demo.service;

import java.util.HashMap;

import com.example.demo.vo.TestVO;
import com.example.demo.vo.UserVO;

public interface UserService {

	// 회원가입
	public int insertCustomer(UserVO vo);

	// 로그인
	public UserVO loginCustomer(UserVO vo);

	// 아이디 중복확인
	public int mIdCheck(String mId);

	// 카카오 회원가입 로그인
    public String getAccessToken(String code);
	public HashMap<String, Object> getUserInfo(String access_Token);
	
	
	

}
