package com.example.demo.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.service.TestService;
import com.example.demo.vo.TestVO;

import jakarta.servlet.http.HttpServletRequest;

@RestController
//@RequestMapping("/board")
public class TestController {

	@Autowired
	private TestService testService;
	
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return  step;
	}
	
	@RequestMapping("/getBoard")
	public void getBoard(TestVO vo, Model m) {
		TestVO result = testService.getTest(vo);
		m.addAttribute("board", result);
		System.out.println("안녕");
	}
	
	@GetMapping("/api/hello")
	public List<String> Hello() {
		return Arrays.asList("서버","뷰");
		
	}
	
	@PostMapping("/ip")
	public ResponseEntity<String> ip (HttpServletRequest request) {
		// 요청을 보낸 클라이언트의 IP주소를 반환합니다.
		return ResponseEntity.ok(request.getRemoteAddr());
	} 
}
