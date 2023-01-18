package com.example.demo.controller;

import java.util.Iterator;
import java.util.List;

import com.example.demo.dao.UserDAO;
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
import com.example.demo.vo.StudyRoomVO;
import com.google.gson.Gson;

@Controller
@RequestMapping("/studyRoom")
public class StudyRoomController {

	@Autowired
	private StudyRoomService studyroomService;
	
	@Autowired
	private UserService userService;

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

		System.out.println("myStudyRoom 확인 >> ");
		String loginId = (String) session.getAttribute("loginId");
		System.out.println("로그인 아이디 : " + loginId);
		vo.setmId(loginId);
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

		m.addAttribute("myroom", list); // 내가만든 스터디룸 화면에 찍는거
		m.addAttribute("myroomcnt", list.size()); // 스터디룸 안 만들었을때 화면에 찍는거
		m.addAttribute("studyall", studyroomService.allStudy(vo)); // 선아
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
		vo.setmId(loginId);
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
	public String searchStudy(String sCategory) {
		String json = new Gson().toJson(studyroomService.searchStudy(sCategory));
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

//	// 선호테그 수정
	@RequestMapping("/updatelikeTag")
	public String updatelikeTag(UserVO vo) {
		System.out.println("updatelikeTag : " +vo);
		userService.updatelikeTag(vo);
		return "redirect:study";
	}

}