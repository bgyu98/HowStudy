package com.example.demo.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.StudyRoomService;
import com.example.demo.vo.MyStudyVO;
import com.example.demo.vo.StudyRoomVO;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/studyRoom")
public class StudyRoomController {


	@Autowired
	private StudyRoomService studyroomService;

	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "studyRoom/" + step;
	}

	@RequestMapping("/insertRoom")
	public String insertRoom(StudyRoomVO vo) {
		studyroomService.insertRoom(vo);
		System.out.println("controller 확인 >> " + vo);

		return "redirect:study";
	}


	// 내가 만든 스터디룸 + 하트.....
		@RequestMapping("/study")
		public void myRoom(StudyRoomVO vo, HttpSession session, Model m) {

			System.out.println("myStudyRoom 확인 >> " );
			String loginId = (String) session.getAttribute("loginId");
			System.out.println("로그인 아이디 : " + loginId);
			vo.setmId(loginId);
			// id별 방번호 출력 - 리스트로
			List<StudyRoomVO> list = studyroomService.myroomlist(vo);
			//System.out.println("list : " + list);
			//Integer crh = studyroomService.checkheart(list.get(0).getsNum());
			//System.out.println(crh);
			
			  Integer [] temp = new Integer[list.size()]; // 방 별로 좋아요 수 저장
			  Integer [] temp2 = new Integer[list.size()]; //  방 별로 기존에 좋아요 눌렀는지 체크
		      for(int i =0; i<list.size(); i++ ) {
		        //  System.out.println("list : " + list.get(i));
		    	  if(list.size() != 0) {
		    		  
		         System.out.println("getsNum : " + list.get(i).getsNum()); // 방 번호 출력
		          if(studyroomService.checkheart(list.get(i).getsNum()) == null) { // 좋아요 수가 없을 경우 (0인경우)
		        	  temp[i] = 0;				// 0 저장
		          }else {						// 좋아요 수가 있는 경우
		        	  temp[i] = studyroomService.checkheart(list.get(i).getsNum());		// 해당 수 저장
		          }
		          System.out.println("방 번호별 좋아요 수 : " + temp[i]);
		          list.get(i).setsFavorNum(temp[i]);			// list에 해당 값들 저장
		      	 }
		    	  
		    	 vo.setsNum(list.get(i).getsNum());		// vo에 해당 방 번호 입력
		    	  if(studyroomService.checkRoomHeart(vo) == null) {		// 해당 방을 즐겨찾기 안한 경우
		    		  System.out.println("즐겨찾기 안했음 : ");	
		    		  temp2[i] = 0 ; 		// 기존에 즐겨찾기를 안했다는 의미로 0 저장
		    	  }else if(studyroomService.checkRoomHeart(vo) != null) {	// 해당 방을 즐겨찾기 한 경우
		    		  System.out.println("즐겨찾기 했음 : ");
		    		  temp2[i] = 1; 		// 기존에 즐겨찾기를 했다는 의미로 1 저장
		    	  }
		    	  list.get(i).setCheck(temp2[i]);
		    	  
		    	  System.out.println("list : " + list);
		      }
		     

			m.addAttribute("myroom", list); //화면에 찍어야 하니까!!
			System.out.println("listchekc : " + list);
			
			
		}

		// 내가 만든 스터디룸에 찍히는 하트

		public Integer checkheart(Integer sNum)throws Exception {
			Integer ch = studyroomService.checkheart(sNum);
			return ch;
		}
		
		
		/*
		 해당 구문 호출 시 방 번호별 즐겨찾기 여부 확인
		
		 */

		public Integer checkRoomHeart(StudyRoomVO vo, HttpSession session) throws Exception{
			String loginId = (String) session.getAttribute("loginId");
			System.out.println("로그인 아이디 : " + loginId);
			vo.setmId(loginId);
			Integer crh = studyroomService.checkRoomHeart(vo);
			return crh;
		}



}