package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/studyRoom")
public class StudyRoomController {

	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "studyRoom/" + step;
	}
	
}
