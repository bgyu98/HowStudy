package com.example.demo.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import com.example.demo.dao.UserDAO;
import com.example.demo.log.logController;
import com.example.demo.log.logController;
import com.example.demo.service.RecordService;
import com.example.demo.service.StudyRoomService;
import com.example.demo.vo.MyStudyVO;
import com.example.demo.vo.StudyRoomVO;
import com.example.demo.vo.UserVO;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import jakarta.servlet.http.HttpSession;


import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.StudyRoomService;
import com.example.demo.service.StudyRoomServiceImpl;
import com.example.demo.service.UserService;
import com.example.demo.vo.NoticeVO;
import com.example.demo.vo.RecordVO;
import com.example.demo.vo.StudyRoomVO;
import com.google.gson.Gson;

@Controller
@RequestMapping("/studyRoom")
public class StudyRoomController {
	static logController log = new logController();

	
	@Autowired
	private StudyRoomService studyroomService;

	@Autowired
	private UserService userService;
	
	@Autowired
	private RecordService recordService;

	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "studyRoom/" + step;
	}

	@RequestMapping("/insertRoom")
	public String insertRoom(StudyRoomVO vo) {
		studyroomService.insertRoom(vo);

		return "redirect:study";
	}

	// 내가 만든 스터디룸 + 하트.....
	@RequestMapping("/study")
	public void myRoom(StudyRoomVO vo, HttpSession session, Model m) {

		log.logCustomer(String.valueOf((session.getAttribute("loginId"))+" "));
	    System.out.println("ㅎㅎㅎㅎㅎ");
	     
		System.out.println("myStudyRoom 확인 >> ");
		String loginId = (String) session.getAttribute("loginId");
		System.out.println("로그인 아이디 : " + loginId);
		vo.setLoginId(loginId);
		// id별 방번호 출력 - 리스트로
		List<StudyRoomVO> list = studyroomService.myroomlist(vo);
		

		Integer[] temp = new Integer[list.size()]; // 방 별로 좋아요 수 저장
		Integer[] temp2 = new Integer[list.size()]; // 방 별로 기존에 좋아요 눌렀는지 체크
		for (int i = 0; i < list.size(); i++) {
			// System.out.println("list : " + list.get(i));
			if (list.size() != 0) {

				if (studyroomService.checkheart(list.get(i).getsNum()) == null) { // 좋아요 수가 없을 경우 (0인경우)
					temp[i] = 0; // 0 저장
				} else { // 좋아요 수가 있는 경우
					temp[i] = studyroomService.checkheart(list.get(i).getsNum()); // 해당 수 저장
				}

				list.get(i).setsFavorNum(temp[i]); // list에 해당 값들 저장
			}

			vo.setsNum(list.get(i).getsNum()); // vo에 해당 방 번호 입력
			if (studyroomService.checkRoomHeart(vo) == null) { // 해당 방을 즐겨찾기 안한 경우

				temp2[i] = 0; // 기존에 즐겨찾기를 안했다는 의미로 0 저장
			} else if (studyroomService.checkRoomHeart(vo) != null) { // 해당 방을 즐겨찾기 한 경우

				temp2[i] = 1; // 기존에 즐겨찾기를 했다는 의미로 1 저장
			}
			list.get(i).setCheck(temp2[i]);
			list.get(i).setCheck2(list.size());

		}

		// 전체 방번호 출력 - 리스트로
		List<StudyRoomVO> allStudy = studyroomService.allStudy(vo);
		Integer[] temp3 = new Integer[allStudy.size()]; // 방 별로 좋아요 수 저장
		Integer[] temp4 = new Integer[allStudy.size()]; // 방 별로 기존에 좋아요 눌렀는지 체크
		System.out.println("방 개수 : " + allStudy.size());
		for (int i = 0; i < allStudy.size(); i++) {
			// System.out.println("list : " + list.get(i));
			if (allStudy.size() != 0) {

				if (studyroomService.checkheart(allStudy.get(i).getsNum()) == null) { // 좋아요 수가 없을 경우 (0인경우)
					temp3[i] = 0; // 0 저장
				} else { // 좋아요 수가 있는 경우
					temp3[i] = studyroomService.checkheart(allStudy.get(i).getsNum()); // 해당 수 저장
				}

				allStudy.get(i).setsFavorNum(temp3[i]); // allStudy에 해당 값들 저장
			}

			vo.setsNum(allStudy.get(i).getsNum()); // vo에 해당 방 번호 입력
			if (studyroomService.checkRoomHeart(vo) == null) { // 해당 방을 즐겨찾기 안한 경우

				temp4[i] = 0; // 기존에 즐겨찾기를 안했다는 의미로 0 저장
			} else if (studyroomService.checkRoomHeart(vo) != null) { // 해당 방을 즐겨찾기 한 경우

				temp4[i] = 1; // 기존에 즐겨찾기를 했다는 의미로 1 저장
			}
			allStudy.get(i).setCheck(temp4[i]);
			allStudy.get(i).setCheck2(allStudy.size());

		}

		m.addAttribute("myroom", list); // 내가만든 스터디룸 화면에 찍는거
		m.addAttribute("myroomcnt", list.size()); // 스터디룸 안 만들었을때 화면에 찍는거
		m.addAttribute("studyall", allStudy); // 선아
		m.addAttribute("scntSelect", studyroomService.selectScnt(vo)); // 선아

	}

	// 내가 만든 스터디룸에 찍히는 하트

	public Integer checkheart(Integer sNum) throws Exception {
		Integer ch = studyroomService.checkheart(sNum);
		return ch;
	}

	/*
	 * 해당 구문 호출 시 방 번호별 즐겨찾기 여부 확인
	 * 
	 */

	public Integer checkRoomHeart(StudyRoomVO vo, HttpSession session) throws Exception {
		String loginId = (String) session.getAttribute("loginId");
		vo.setLoginId(loginId);
		Integer crh = studyroomService.checkRoomHeart(vo);
		return crh;
	}

	// 키워드별 스터디룸 검색
	@RequestMapping("searchItems")
	public String searchItems(String items, Model m) {
		m.addAttribute("searchList", studyroomService.searchItems(items));
		return "studyRoom/searchItems";
	}

	// 태그별 스터디룸 나열 (데이터 받기)
	@ResponseBody
	@RequestMapping(value = "/study2", produces = "application/text;charset=utf-8")
	public String searchStudy(String sCategory, HttpSession session, StudyRoomVO vo) {
		String loginId = (String) session.getAttribute("loginId"); // 로그인 아이디 값 받음
		vo.setLoginId(loginId); // 즐겨찾기 여부 체크를 위한 세팅 ( 방 번호, 로그인 아이디 필요 )
		
		List<StudyRoomVO> sCategoryVo = studyroomService.searchStudy(sCategory); // 카테고리 별 vo
		Iterator<StudyRoomVO> it = sCategoryVo.iterator(); // 카테고리 별 vo를 방 번호 순서 대로 하나씩 읽음
		Gson gson = new Gson();
	    JsonArray jArray = new JsonArray();
		while(it.hasNext()) {
			StudyRoomVO srvo = it.next();
			JsonObject object = new JsonObject();
		//	System.out.println("srvo : " + srvo);
		//	System.out.println("방 번호  : " + srvo.getsNum());
			Integer checkheart = studyroomService.checkheart(srvo.getsNum()); // 방 번호별로 좋아요 수 체크
		
			if(checkheart != null) {		// 만약 좋아요 수가 존재한다면, 그 숫자로 설정
				checkheart = checkheart;			
			}else {							// 좋아요 수가 없다면, 0 으로 설정
				checkheart = 0;
			}
			
			vo.setsNum(srvo.getsNum()); // 즐겨찾기 여부 체크를 위한 세팅 ( 방 번호 )
			
			Integer check = studyroomService.checkRoomHeart(vo);
		//	System.out.println("vo : " + vo.getsNum() + " check : " + check);
			if(check == null) { // 만약 해당 값이 없음 => 즐겨찾기를 하지 않았으므로 0 저장
				check = 0;
			}else {					// 해당 값이 있음 = 즐겨찾기를 했다는 것이므로 1 저장
				check = 1; 
			}
			
			//System.out.println("방 별 좋아요 수 : " + checkheart);
			srvo.setsFavorNum(checkheart);
			System.out.println("srvo : " + srvo);
			object.addProperty("sNum", srvo.getsNum());
			object.addProperty("mId", srvo.getmId());
			object.addProperty("sTitle", srvo.getsTitle());
			object.addProperty("sCnt", srvo.getsCnt());
			object.addProperty("sPeopleNum", srvo.getsPeopleNum());
			object.addProperty("sPw", srvo.getsPw());
			object.addProperty("sDate", srvo.getsDate());
			object.addProperty("sCategory", srvo.getsCategory());
			object.addProperty("sComment", srvo.getsComment());
			object.addProperty("sFile", srvo.getsFile());
			object.addProperty("items", srvo.getItems());
			object.addProperty("keyword", srvo.getKeyword());
			object.addProperty("file", String.valueOf(srvo.getFile()));
			/* 까지가 기본 srvo, 여기다가 방 별 좋아요 수, 아이디 비교하여 눌렀는지 여부 추가*/
			object.addProperty("sFavorNum", checkheart);		// 방 별 좋아요 수
			object.addProperty("check", check);
			 jArray.add(object);
		}
	
	

	String json = gson.toJson(jArray);
	System.out.println("json값은??????????? : " + json);
		return json;
		
	}

	// sNum 잘 받아오는지 test
	@RequestMapping("/chat")
	public void Hitplus(@RequestParam("sNum") Integer sNum, Model m) {
		// @RequestParam("sNum") : 주소에 있는 특정 값 가져오기 위해 사용
		StudyRoomVO vo = studyroomService.seleteStudyRoom(sNum);
		m.addAttribute("searchStudyRoom", vo);

		// 조회수 증가
		studyroomService.stdHitsplus(vo.getsNum()); // 조회수 증가
		System.out.println("방번호 : " + vo.getsNum());

		StudyRoomVO scnt = studyroomService.seleteStudyRoom(sNum);
		System.out.println("scnt는 : " + scnt);
		m.addAttribute("cnt", scnt);

	}

	// 선호테그 수정
	@RequestMapping("/updatelikeTag")
	public String updatelikeTag(UserVO vo) {
		System.out.println("updatelikeTag : " + vo);
		userService.updatelikeTag(vo);
		return "redirect:study";
	}
	
	

}