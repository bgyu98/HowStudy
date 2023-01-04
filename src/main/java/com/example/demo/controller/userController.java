package com.example.demo.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.service.UserService;
import com.example.demo.vo.UserVO;
import org.springframework.ui.Model;
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

	// 회원 가입 아이디 중복일때 :9 / 회원가입 완료: 1
	@RequestMapping(value = "insertCustomer", method = RequestMethod.POST)
	public String insertCustomer(UserVO vo, HttpSession session, HttpServletRequest request) throws IOException {
		System.out.println("회원가입");
		if (userService.checkId(vo) != null) {
			// id exists in DB. Make customer input different id
			session.setAttribute("sok", 9);
			// m.addAttribute("sok", 9);
			return "user/login";
		}
		int insertResult = userService.insertCustomer(vo);
		System.out.println("아이디 중복 확인" + insertResult);
		request.setAttribute("ok", insertResult);
		session.setAttribute("sok", 1);
		// request.setAttribute("sok", 1);
		// m.addAttribute("sok", 1);
		return "user/login";
	}

	@RequestMapping(value = "loginCustomer")
	public String loginCustomer(UserVO vo, HttpSession session, Model m) {
		System.out.println("  로그인:" + vo);
		UserVO loginResult = userService.loginCustomer(vo);
		// 로그인 실패
		if (loginResult == null || vo.getmId() == null) { 
			System.out.println("로그인 실패");
			session.setAttribute("sok", 5);
			m.addAttribute("sok", 5);
			return "user/login";
		} else {
			// 로그인 성공
			System.out.println("로그인 성공 : " + vo.getmId());
			// 세션에 저장
			session.setAttribute("loginId", vo.getmId());
			session.setAttribute("loginPass", vo.getmPw());
			// 관리자 로그인
			if (vo.getmId().equals("admin")) {
				System.out.println("관리자 로그인");
				return "redirect:../admin/adminMain";
			}
		}
		return "redirect:../studyRoom/study";
	}
	

	// 회원정보 조회
	@RequestMapping("/modifyAccount")
	public void myPage(String mId, Model m) {
		UserVO vo = userService.getUserInfo(mId);
		m.addAttribute("userInfo", vo);
	}

	// 회원정보 수정
	@RequestMapping("/modifyForm")
	public String modify(UserVO vo) {
		userService.updateCustomer(vo);
		return "redirect:../studyRoom/study?mId=" + vo.getmId();
	}

	// 비밀번호 확인 & 회원정보 삭제
	@RequestMapping("/userDelete")
	public String confirm(String mId, String mPw, UserVO vo, Model m, HttpSession session) {

		boolean result = userService.checkPw(mId, mPw);
		if (result) {
			userService.deleteInfo(vo);
			String id = (String) session.getAttribute("loginId");
			String pwd = (String) session.getAttribute("loginPass");
			session.invalidate();
			return "redirect:../studyRoom/study";
		} else {
			m.addAttribute("message", "비밀번호가 불일치합니다.");
			return "user/passwordConfirm";
		}

	}

}
