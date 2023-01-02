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

}
