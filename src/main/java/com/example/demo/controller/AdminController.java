package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import com.example.demo.dao.UserDAO;
import com.example.demo.service.FaqService;
import com.example.demo.service.NoticeService;
import com.example.demo.service.ReportService;
import com.example.demo.service.UserService;
import com.example.demo.vo.FaqVO;
import com.example.demo.vo.NoticeVO;
import com.example.demo.vo.ReportVO;
import com.example.demo.vo.UserVO;

@Controller
@RequestMapping("/pages")
public class AdminController {

	@Autowired
	private FaqService faqService;

	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ReportService reportService;

	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "pages/" + step;
	}

	// ******************** FAQ

	// Faq 등록
	@RequestMapping("/insertFaq")
	public String insertFaq(FaqVO faqvo, Model m) {
		System.out.println("faq 글등록");
		faqService.insertFaqBoard(faqvo);
		m.addAttribute("faqList", faqService.getFaqBoardList(faqvo));
		return "redirect:../pages/faq";
	}

	// Faq 목록 출력
	@RequestMapping("/faq")
	public void selectFaq(FaqVO faqvo, Model m) {
		System.out.println("faq 목록 출력");
		m.addAttribute("faqContent", faqService.getFaqBoardList(faqvo));
	}

	// Faq 상세 페이지 이동
	@RequestMapping("/modifyFaq")
	public String seleteFaqBoard(FaqVO faqvo, Model m) {
		m.addAttribute("faq", faqService.seleteFaqBoard(faqvo));
		return "pages/modifyFaq";
	}

	// Faq 수정
	@RequestMapping("/updateFaq")
	public String updateFaqBoard(FaqVO faqvo) {
		System.out.println("FAQ 글수정");
		faqService.updateFaqBoard(faqvo);
		System.out.println(faqvo);
		return "redirect:../pages/faq";
	}

	// Faq 삭제
	@RequestMapping("/deleteFaq")
	public String deleteNotice(FaqVO faqvo, Model m) {
		faqService.deleteFaqBoard(faqvo);
		System.out.println("게시글 삭제");
		m.addAttribute("faqDeleteList", faqService.seleteFaqBoard(faqvo));
		return "redirect:../pages/faq";
	}

	// ******************** Notice

	// Notice 등록
	@RequestMapping("/insertNotice")
	public String insertNotice(NoticeVO noticevo, Model m) {
		System.out.println("게시물등록록ㄹ고록로고"+noticevo);
		noticeService.insertNotice(noticevo);
		m.addAttribute("noticeList", noticeService.selectAllNotice(noticevo));
		return "redirect:../pages/notice";
	}

	@RequestMapping(value = {"/notice" , "/dashboard"})
	public void selectNoticeList(NoticeVO noticevo, Model m, Integer nCount, ReportVO vo) {
		m.addAttribute("noticeContent", noticeService.selectAllNotice(noticevo));
		m.addAttribute("noticeFive", noticeService.selectFiveNotice(noticevo));
		System.out.println("총 개수 : " + nCount);
		m.addAttribute("cnt", noticeService.selectCount(nCount));
		m.addAttribute("reportList", reportService.getReportList(vo));
	}
	


	// Notice 수정
	@RequestMapping("/updateNotice")
	public String updateNoticeBoard(NoticeVO noticevo) {
		System.out.println("FAQ 글수정");
		noticeService.updateNoticeBoard(noticevo);
		System.out.println("업데이트트트트트트트틑" + noticevo);
		return "redirect:../pages/notice";
	}

	// Notice 상세 페이지 이동
	@RequestMapping("/modifyNotice")
	public void seleteNotice(NoticeVO noticevo, Model m) {
		m.addAttribute("notice", noticeService.seleteNoticeBoard(noticevo));
	}

	// Notice 삭제
	@RequestMapping("/deleteNotice")
	public String deleteNotice(NoticeVO noticevo, Model m) {
		noticeService.deleteNoticeBoard(noticevo);
		System.out.println("노티슺 ㅗ난게시글 삭제");
		m.addAttribute("noticeDeleteList", noticeService.seleteNoticeBoard(noticevo));
		return "redirect:../pages/notice";
	}

	// ****************** manageUser

	// 관리자 회원정보 조회
	@RequestMapping("/manageUserList")
	public void manageUserList(UserVO uservo, Model m) {
		System.out.println("userList확인 : " + uservo);
		m.addAttribute("userList",userService.manageUserList(uservo));
	}
	
	// 관리자 회원정보 상세 조회
	@RequestMapping("/manageUserDetail")
	public void manageUserDetail(String mId, Model m) {
		 //회원정보 저장
		  UserVO vo = userService.getUserInfoAdmin(mId);
		  m.addAttribute("vo",vo);
	}
	

	

}
