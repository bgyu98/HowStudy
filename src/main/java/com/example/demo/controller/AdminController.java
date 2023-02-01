package com.example.demo.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.FaqService;
import com.example.demo.service.MembershipService;
import com.example.demo.service.NoticeService;
import com.example.demo.service.ReportService;
import com.example.demo.service.StudyRoomService;
import com.example.demo.service.UserService;
import com.example.demo.vo.FaqVO;
import com.example.demo.vo.MembershipVO;
import com.example.demo.vo.NoticeVO;
import com.example.demo.vo.PagingVO;
import com.example.demo.vo.RecordVO;
import com.example.demo.vo.ReportVO;
import com.example.demo.vo.StudyRoomVO;
import com.example.demo.vo.UserVO;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/pages")
public class AdminController {

	@Autowired
	private FaqService faqService;
	
	@Autowired
	private StudyRoomService studyroomService;

	@Autowired
	private NoticeService noticeService;

	@Autowired
	private UserService userService;

	@Autowired
	private ReportService reportService;
	
	@Autowired
	private MembershipService membershipService;

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
		System.out.println("게시물등록록ㄹ고록로고" + noticevo);
		noticeService.insertNotice(noticevo);
		m.addAttribute("noticeList", noticeService.selectAllNotice(noticevo));
		return "redirect:../pages/notice";
	}

	@RequestMapping(value = { "/notice", "/dashboard" })
	public void selectNoticeList(NoticeVO noticevo, Model m, Integer nCount, ReportVO vo) {
		m.addAttribute("noticeContent", noticeService.selectAllNotice(noticevo));
		m.addAttribute("noticeFive", noticeService.selectFiveNotice(noticevo));
//		System.out.println("총 개수 : " + nCount);
		m.addAttribute("cnt", noticeService.selectCount(nCount));
		m.addAttribute("reportList", reportService.getReportList(vo));
		ReportVO test = reportService.checkrNum(vo);	//vo 값 갖고오기
		Integer rNum = test.getrNum();				// vo에서 rNum값 갖고오기
		System.out.println("rNum :: "+ rNum);		// 출력 ( 가장 최근의 신고번호 갖고와야 정답 )
		m.addAttribute("rNum", rNum);
		
		PagingVO pageMaker = new PagingVO();
		pageMaker.setCriNVO(noticevo);
		pageMaker.setTotalCountNVO(noticeService.listCount(noticevo));
//		System.out.println("listCount확인:" + noticeService.listCount(noticevo));
		m.addAttribute("pageMaker", pageMaker);
	}
	
	// 웹푸시때매 만듦 Ajax 에 쓰이는 매핑
	@RequestMapping(value = { "/rNum" })
	@ResponseBody
	public String selectNoticeList2() {
		ReportVO vo = new ReportVO();
		ReportVO test = reportService.checkrNum(vo);	//vo 값 갖고오기
		Integer rNum = test.getrNum();				// vo에서 rNum값 갖고오기
		System.out.println("rNum :: "+ rNum);
		return  rNum.toString();
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
		m.addAttribute("userList", userService.manageUserList(uservo));
		
		PagingVO pageMaker = new PagingVO();
		pageMaker.setCriUVO(uservo);
		pageMaker.setTotalCountUVO(userService.listCount(uservo));
		System.out.println("listCount확인:" + userService.listCount(uservo));
		m.addAttribute("pageMaker", pageMaker);
	}

	// 관리자 회원정보 상세 조회
	@RequestMapping("/manageUserDetail")
	public void manageUserDetail(String mId, Model m) {
		// 회원정보 저장
		UserVO vo = userService.manageUserDetail(mId);
		m.addAttribute("vo", vo);
		
		// 관리자 회원상세내역
		List<MembershipVO> mvo = membershipService.managerUserMembership(mId);
		System.out.println("확인mvo : " + mvo);
		m.addAttribute("mvo", mvo);
		
		// 관리자 경고 상세 
		List<ReportVO> rvo = reportService.getUserReport(mId) ;
		System.out.println("확인rvo" + rvo);
		m.addAttribute("rvo", rvo);
	}
	
	// 관리자 신고 현황
	@RequestMapping("/report")
	public void manageReportList(ReportVO rvo, Model m) {
		List<ReportVO> result = reportService.manageReportList(rvo);
		System.out.println("manageReportList확인 : " +result);
		m.addAttribute("reportList", result);
		
		PagingVO pageMaker = new PagingVO();
		pageMaker.setCriRVO(rvo);
		pageMaker.setTotalCount(reportService.listCount(rvo));
		System.out.println("listCount확인:" + reportService.listCount(rvo));
		m.addAttribute("pageMaker", pageMaker);
	}

	// 관리자 신고 상세
	@RequestMapping("/getReport")
	public void getReport(Integer rNum, Model m) {
		ReportVO vo = reportService.getReport(rNum);
		System.out.println("getReport 확인 : " + vo);
		m.addAttribute("getReport", vo);
		
	}
	
	//관리자 신고 접수
	@RequestMapping("/updateReport")
	public String updateReport(ReportVO vo) {
		 reportService.updateReport(vo);
		 System.out.println(vo.getrNum());
		System.out.println("zzzzzzzzzzz : " + vo);
		return "redirect:../pages/report";
	}
	
	@RequestMapping("saveDate")
	@ResponseBody
	public String saveDateCount(StudyRoomVO vo) throws Exception {
		/* 필요한 데이터 잘 넘어왔는지 체크 [ 아이디, 날짜1, 날짜2 ] 	 */
		System.out.println("첫 번째 날짜 :" +vo.getDate1());
		vo.setDate1(vo.getDate1());
		System.out.println("두 번째 날짜 :" +vo.getDate2());
		vo.setDate2(vo.getDate2());

		// 날짜 별 리스트 호출
		List<StudyRoomVO> saveDate = studyroomService.saveDate(vo);
		Gson gson = new Gson();
		JsonArray jArray = new JsonArray();

		Iterator<StudyRoomVO> it = saveDate.iterator();
		
		while(it.hasNext()) {
			StudyRoomVO srvo = it.next();
			System.out.println("srvo : " +  srvo);
			JsonObject object = new JsonObject();
			String sDate = srvo.getsDate();
			String sCategory = srvo.getsCategory();
			String sCount = srvo.getsCount().toString();
			
			object.addProperty("sCategory", sCategory);
			object.addProperty("sDate", sDate);
			object.addProperty("sCount", sCount);
			jArray.add(object);
		}

		String json2 = gson.toJson(jArray);
		System.out.println("json : " + json2);

		return json2;
	}
	

	// 신고번호 확인
//	@RequestMapping("/checkrNum")
//	public String checkrNum(ReportVO vo) {
//		int test = reportService.checkrNum(vo);
//		System.out.println("rNum :: "+test);
//		return "dashboard";
//	}
	

}
