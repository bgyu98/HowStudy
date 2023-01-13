package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.MembershipService;
import com.example.demo.service.ShopService;
import com.example.demo.service.UserService;
import com.example.demo.vo.MembershipVO;
import com.example.demo.vo.ShopVO;
import com.example.demo.vo.UserVO;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@Autowired
	private ShopService service;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MembershipService mService;
	
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "shop/" + step;
	}
	
	// 이용권 구매 페이지
	@RequestMapping("/ticket")
	public String selectTicketVOList(ShopVO vo, Model m) {
		List<ShopVO> list = service.selectTicketVOList(vo);
		m.addAttribute("list",list);
		return "shop/ticket";
	}
	
	
	// 이용권 구매 성공 페이지
	@RequestMapping("/paySuccess")
	   public String payCustomer(MembershipVO mvo, UserVO vo, Model m, HttpSession session) {
		mService.buyTicket(mvo); // memebership 테이블에 입력

		// 자동화때문에 1초 늦게 select
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		// 사용자 정보 검색 
		UserVO loginResult = userService.payCustomer(vo);
	    session.setAttribute("memberGrade", loginResult.getmGrade());
	     m.addAttribute("memberGrade", loginResult.getmGrade());
	     
	    //아이디로 사용자 정보 검색 후 이메일 발송
	     String msg = null;
	     MembershipVO result = mService.findById(mvo);
	     if (result != null) {
	    	 System.out.println("아이디 존재함");
	    	 String mail = mService.sendemail(result);
	    	 System.out.println("성공하면 뜬당" + mail);
	    	 msg = result.getmId() + "님의 이메일인" + result.getmEmail() + "로 결제 내역을 전송해 드렸습니다!";
	    	 System.out.println("****성공**** : " + msg);
	    	  return "shop/paySuccess";
	     }else {
	    	 msg = "일치하는 정보가 없습니다..";
	    	 return "fail";
	     }
	     
	    
	    
	   
	   }
	
		
	
	
	// 스터디룸으로
	@RequestMapping("/goHome")
	public String goHome() {
		return "redirect:../studyRoom/study";
	}
	
	
	
	

}
