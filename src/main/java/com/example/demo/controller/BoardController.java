package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.FaqService;
import com.example.demo.service.NoticeService;
import com.example.demo.service.UserService;
import com.example.demo.vo.FaqVO;
import com.example.demo.vo.NoticeVO;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private FaqService faqService;
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "board/" + step;
	}
	
	@RequestMapping("/faq")
	public void faq(FaqVO faqvo, Model m) {	
		System.out.println("게시판");
		m.addAttribute("faqlist", faqService.getFaqBoardList(faqvo));
		System.out.println(faqService.getFaqBoardList(faqvo));
	}
	
	// Notice 상세 페이지 이동
	@RequestMapping("/noticesangse")
	public void seleteNotice(NoticeVO noticevo, Model m) {	
		m.addAttribute("notice",noticeService.seleteNoticeBoard(noticevo));
	}	
	
	// Notice 목록 출력
	@RequestMapping("/notice")
	public void selectNoticeList(NoticeVO noticevo, Model m){
		System.out.println("notice 목록 출력");
		m.addAttribute("noticeContent", noticeService.selectAllNotice(noticevo));
	}
			
	
}
