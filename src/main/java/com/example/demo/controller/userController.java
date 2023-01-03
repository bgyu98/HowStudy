package com.example.demo.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.UserService;
import com.example.demo.vo.UserVO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "user")
public class userController {

	@Autowired
	private UserService userService;

	// 화면만 띄우는 것들!
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "user/" + step;
	}

	// 회원 가입
	@RequestMapping(value = "insertCustomer", method = RequestMethod.POST)
	public String insertCustomer(UserVO vo, HttpSession session, HttpServletRequest request) throws IOException {
		int insertResult = userService.insertCustomer(vo);
		System.out.println("회원가입:" + insertResult);
		session.setAttribute("sok", 1);
		return "user/login";
	}

	// 로그인
	@RequestMapping(value = "loginCustomer")
	public String loginCustomer(UserVO vo, HttpSession session) {
		System.out.println("로그인:" + vo);    //로그인 할 때 생성되는 vo 
		UserVO loginResult = userService.loginCustomer(vo);
		System.out.println("로그인22:" + loginResult);  //서비스 거쳐서 만들어진 vo
		if (loginResult != null) { // 로그인 성공
			session.setAttribute("loginId", loginResult.getmId());
			session.setAttribute("loginPass", loginResult.getmPw());
			session.setAttribute("loginEmail", loginResult.getmEmail());
			return "studyRoom/study";
		} else {
			// 로그인 실패
			session.setAttribute("sok", 5);
		}
		return "user/login";  
	}

	//로그아웃
	  @RequestMapping(value="logout")
	     public String logout(HttpServletRequest request,  Model m) {
	         System.out.println("로그아웃");
	        HttpSession session = request.getSession(true);
	        session.invalidate();
	        return "studyRoom/study";
	     }
	
	  
	//아이디 중복체크
	  @RequestMapping(value="mIdCheck")
	  @ResponseBody
	  public int mIdCheck(String mId) {
	  	int result = userService.mIdCheck(mId);
	   System.out.println("중복체크-------------" +result);
	  	return result;
	  }
	  


}
