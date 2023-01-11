package com.example.demo.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.StudyRoomService;
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
		
		  Integer [] temp = new Integer[list.size()];
	      for(int i =0; i<list.size(); i++ ) {
	        //  System.out.println("list : " + list.get(i));
	    	  if(list.size() != 0) {
	    		  
	    	 
	         System.out.println("getsNum : " + list.get(i).getsNum());
	          if(studyroomService.checkheart(list.get(i).getsNum()) == null) {
	        	  temp[i] = 0;
	          }else {
	        	  temp[i] = studyroomService.checkheart(list.get(i).getsNum());
	          }
	          System.out.println("방 번호별 좋아요 수 : " + temp[i]);
	          list.get(i).setsFavorNum(temp[i]);
	      	 }
	      }
	     
	      
	       
		


		m.addAttribute("myroom", list); //화면에 찍어야 하니까!!
		
	}

	// 내가 만든 스터디룸에 찍히는 하트

	public Integer checkheart(Integer sNum)throws Exception {
		Integer ch = studyroomService.checkheart(sNum);
		return ch;
	}

}