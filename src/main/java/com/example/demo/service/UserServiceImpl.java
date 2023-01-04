package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.UserDAO;
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
	
	public int updateCustomer(UserVO vo) {
		return userDAO.updateCustomer(vo);
	}
	
	public UserVO getUserInfo(String mId) {
		return userDAO.getUserInfo(mId);

	}
	
	//회원정보 삭제
	public int deleteInfo(UserVO vo) {
		System.out.println("deleteServiceImpl=>"+ vo);
		return userDAO.deleteInfo(vo);
	}
	
	// 회원 정보 삭제를 위한 비밀번호 체크
	public boolean checkPw(String mId, String mPw) {
		System.out.println("checkPw=>" + mId + mPw);
			return userDAO.checkPw(mId,mPw);
	}
	

}
