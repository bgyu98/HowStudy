package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.TestService;
import com.example.demo.vo.TestVO;

@Controller
@RequestMapping("/admin")
public class TestController {

	@Autowired
	private TestService testService;
	
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return  "admin/" + step;
	}

}
