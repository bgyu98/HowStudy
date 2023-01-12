package com.example.demo.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.StudyRoomService;
import com.example.demo.service.StudyRoomServiceImpl;
import com.example.demo.vo.NoticeVO;
import com.example.demo.vo.StudyRoomVO;
import com.google.gson.Gson;

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
      System.out.println("controller 확인" + vo);
   
      return "redirect:study";
   }
   
   @RequestMapping("searchItems")
	public String searchItems(String items, Model m) {
		m.addAttribute("searchList", studyroomService.searchItems(items));
		return "studyRoom/searchItems";
	}
   
   
// 태그 클릭 시 해당되는 스터디룸만 나열
//   @ResponseBody
//   @PostMapping(value="/study")
//	public String searchStudy(@RequestBody Map<String, String> keyword, Model m , StudyRoomVO vo) {
//	   System.out.println("controller : " + String.valueOf(keyword.get("sCategory")));
//	   System.out.println("controller : " + keyword.get("sCategory"));
//		m.addAttribute("tagList", studyroomService.searchStudy(keyword.get("sCategory")));
//		System.out.println("m : " +m);
//		
//		m.addAttribute("studyall", studyroomService.allStudy(vo));
//		System.out.println("model : " + m);
//		// List<StudyRoomVO> 을 Json으로 변경하고 그것을 문자열로 리턴
//		String json = new Gson().toJson(studyroomService.searchStudy(keyword.get("sCategory")));
//		return json;
//		
//		
//	}
   
   @ResponseBody
   @RequestMapping(value="/study2", produces="application/text;charset=utf-8") 
	public String searchStudy(String sCategory) {
	   System.out.println("sCategory : " + sCategory);
		String json = new Gson().toJson(studyroomService.searchStudy(sCategory));
		System.out.println("json = " + json);
		return json;

	}
   
   @RequestMapping("/study")
   public void allStudy(StudyRoomVO vo, Model m) {
	   m.addAttribute("studyall", studyroomService.allStudy(vo));
	   System.out.println(m);
	   
   }
   
   
   
   

   
}