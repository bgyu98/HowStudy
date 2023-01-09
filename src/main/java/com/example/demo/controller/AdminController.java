package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import com.example.demo.service.FaqService;
import com.example.demo.service.NoticeService;
import com.example.demo.vo.FaqVO;
import com.example.demo.vo.NoticeVO;


@Controller
@RequestMapping("/pages")
public class AdminController {

	@Autowired
	private FaqService faqService;
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "pages/" + step;
	}
	
	
	// ******************** FAQ 

	// Faq 등록
	@RequestMapping("/insertFaq")
	public String insertFaq(FaqVO faqvo, Model m){
		System.out.println("faq 글등록");
		faqService.insertFaqBoard(faqvo);
		m.addAttribute("faqList", faqService.getFaqBoardList(faqvo));
		return "redirect:../admin/faq";
	}
	
	// Faq 목록 출력
	@RequestMapping("/faq")
	public void selectFaq(FaqVO faqvo, Model m){
		System.out.println("faq 목록 출력");
		m.addAttribute("faqContent", faqService.getFaqBoardList(faqvo));
	}
	
	// Faq 상세 페이지 이동
	@RequestMapping("/modifyFaq")
	public String seleteFaqBoard(FaqVO faqvo, Model m) {	
		m.addAttribute("faq",faqService.seleteFaqBoard(faqvo));
		return "admin/modifyFaq";
	}
	
	// Faq 수정
	@RequestMapping("/updateFaq")
	public String updateFaqBoard(FaqVO faqvo) {	
		 System.out.println("FAQ 글수정");
		 faqService.updateFaqBoard(faqvo);
		 System.out.println(faqvo);
		return "redirect:../admin/faq";
	}
	
	// Faq 삭제
	@RequestMapping("/deleteFaq")
	public String deleteNotice(FaqVO faqvo, Model m) {
		faqService.deleteFaqBoard(faqvo);
		System.out.println("게시글 삭제");
		m.addAttribute("faqDeleteList", faqService.seleteFaqBoard(faqvo));
		return "redirect:../admin/faq";
	}
	
	
	// ******************** Notice
	
	// Notice 등록
	@RequestMapping("/insertNotice")
	public String insertNotice(NoticeVO noticevo, Model m){
		System.out.println("Notice 글등록");
		noticeService.insertNotice(noticevo);
		System.out.println(noticevo.toString());
		m.addAttribute("noticeList", noticeService.selectAllNotice(noticevo));
		return "redirect:../admin/notice";
	}
	
	
	
	
	
	
	
}
