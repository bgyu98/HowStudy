package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.TestDAO;
import com.example.demo.dao.UserDAO;
import com.example.demo.vo.TestVO;
import com.example.demo.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	// 회원 가입
	public int insertCustomer(UserVO vo) {
		return userDAO.insertCustomer(vo);
	}

	// 아이디 중복 체크
	public UserVO checkId(UserVO vo) {
		return userDAO.checkId(vo);
	}

	// 로그인
	public UserVO loginCustomer(UserVO vo) {
		return userDAO.loginCustomer(vo);
	}
}
