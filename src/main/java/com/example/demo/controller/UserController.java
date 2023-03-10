package com.example.demo.controller;

import java.io.IOException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.MembershipService;
import com.example.demo.service.UserService;
import com.example.demo.vo.MembershipVO;
import com.example.demo.vo.UserVO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping(value = "user")
@Slf4j
public class UserController {

   @Autowired
   private UserService userService;
   
   @Autowired
   private MembershipService memberService;

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
      public String loginCustomer(UserVO vo, HttpSession session, Model m) {
         System.out.println("로그인:" + vo);    //로그인 할 때 생성되는 vo 
         UserVO loginResult = userService.loginCustomer(vo);
         System.out.println("로그인22:" + loginResult);  //서비스 거쳐서 만들어진 vo       
         if(loginResult == null) {
            System.out.println("로그인 실패");
            session.setAttribute("sok", 5);
            return "user/login";
         }else  {
            System.out.println("로그인 성공");
            //세션에 저장
            session.setAttribute("loginId", loginResult.getmId());
            session.setAttribute("loginPass", loginResult.getmPw());
            session.setAttribute("loginEmail", loginResult.getmEmail());
            session.setAttribute("memberGrade", loginResult.getmGrade());
           

            
            if(vo.getmId().equals("admin"))  {
               System.out.println("관리자 로그인");
               return "redirect:../pages/dashboard";
               }
         }
         return "redirect:../studyRoom/study";
      }
   


   // 아이디 중복체크
   @RequestMapping(value = "mIdCheck")
   @ResponseBody
   public int mIdCheck(String mId) {
      int result = userService.mIdCheck(mId);
      System.out.println("중복체크-------------" + result);
      return result;
   }

   // 카카오 회원가입, 로그인

   @RequestMapping(value = "/kakaoLogin", method = RequestMethod.GET)
   public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpSession session) throws Exception {
      System.out.println("####code#### : " + code);

      String access_Token = userService.getAccessToken(code);
      System.out.println("###access_Token#### : " + access_Token);
      
      UserVO userInfo = userService.getUserInfoo(access_Token);
      System.out.println("###nickname#### : " + userInfo.getmId());
       System.out.println("###email#### : " + userInfo.getmEmail());

       //    클라이언트의 아이디가 존재할 때 세션에 해당 아이디, 이메일, 등급 ,토큰 등록
           if (userInfo.getmId() != null) {
               session.setAttribute("loginId", userInfo.getmId());
               session.setAttribute("loginEmail", userInfo.getmEmail());
               session.setAttribute("memberGrade", userInfo.getmGrade());
        
               session.setAttribute("access_Token", access_Token);
           }
       
      return "redirect:../studyRoom/study";
      /*
       * 리턴값의 testPage는 아무 페이지로 대체해도 괜찮습니다. 없는 페이지를 넣어도 무방합니다. 404가 떠도 제일 중요한건
       * #########인증코드 가 잘 출력이 되는지가 중요하므로 너무 신경 안쓰셔도 됩니다.
       */
   }
   
   // 로그아웃
      @RequestMapping(value = "logout")
      public String logout(HttpServletRequest request, Model m) {
         System.out.println("로그아웃하겠습니다용");
         HttpSession session = request.getSession(true);
         session.invalidate();
         return "redirect:../studyRoom/study";
      }
   
  	// 회원정보 조회
  	@RequestMapping("/modifyAccount")
  	public void myPage(String mId, Model m) {
  		System.out.println("select 성공");
  		UserVO vo = userService.getUserInfo(mId);
  		m.addAttribute("userInfo", vo);
  	}

  	// 회원정보 수정
  	@RequestMapping("/modifyForm")  	
  	public String modify(UserVO vo) {
  		System.out.println("update 성공");
  		userService.updateCustomer(vo);
  		System.out.println(vo.toString());
  		return "redirect:../studyRoom/study?mId=" + vo.getmId();
  	}

   // 비밀번호 확인 & 회원정보 삭제
   @RequestMapping("/userDelete")
   public String confirm(String mId, String mPw, UserVO vo, Model m, HttpSession session) {
	  System.out.println("비밀번호 체킹");
      boolean result = userService.checkPw(mId, mPw);
      System.out.println("***************" + mId + "******" + mPw);
      if (result) {
         userService.deleteInfo(vo);
         System.out.println("비밀번호 확인 페이지 이동 mid : " + mId + "mPw : " + mPw);
         String id = (String) session.getAttribute("loginId");
         String pwd = (String) session.getAttribute("loginPass");
         session.invalidate();
         return "redirect:../studyRoom/study";
      } else {
         m.addAttribute("message", "비밀번호가 불일치합니다.");
         return "user/passwordConfirm";
      }

   }
   
   
   //아이디 찾기
   @RequestMapping(value="findId")
   @ResponseBody	//ajax 쓸 때 필요
   public String findId(UserVO vo) {
   	String id = null;
     	UserVO result = userService.findbytelandname(vo);	
		if (result != null) {
			id = result.getmId();
			return id;
		} else {
			id = "0";
			return id;
		}

	}
   
   //비밀번호 찾기
	@RequestMapping(value = "findPw")
	@ResponseBody
	public String findPw(UserVO vo) {
		String message = null;
		UserVO result = userService.findById(vo);
		if (result != null) {
			System.out.println("**1**: 아이디 존재" );
			Integer mailResult =userService.tempPw(result);
			System.out.println("**2**: 디비에 임시비밀번호 저장" + mailResult );
			message = result.getmId() + "님의 이메일인 " + result.getmEmail() + "로 임시 비밀번호를 전송해 드렸습니다.";
			System.out.println("**3**:" + message);
			return "success";
		} else {
			message = "일치하는 정보가 없습니다.";
			return "fail";
		}
	}
   

}