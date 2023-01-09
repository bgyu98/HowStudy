package com.example.demo.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.StudyRoomService;
import com.example.demo.vo.StudyRoomVO;

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
		System.out.println("controllerssssss 확인" + vo);
		studyroomService.insertRoom(vo);
		

	
		return "redirect:study";
	}
}
