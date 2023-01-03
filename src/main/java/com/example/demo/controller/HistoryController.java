package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.HistoryService;
import com.example.demo.vo.HistoryVO;

@Controller
@RequestMapping("/study")
public class HistoryController {
	
	@Autowired
	private HistoryService historyService;

	
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "study/" + step;
	}
	
	// Todo 입력
	@RequestMapping("/insertTodo")
	public String insertTodo(HistoryVO vo) {
		System.out.println("controller 확인");
		historyService.insertTodo(vo);
		return "redirect:todo";
	}
	
	// Todo 목록
	@RequestMapping("/todo")
	public void todo(HistoryVO vo, Model model ) {
		System.out.println("todoCon확인");
		List<HistoryVO> todolist = historyService.todo(vo);
		List<HistoryVO> comlist = historyService.selectCompletion(vo);
		for(HistoryVO temp : todolist) {
			System.out.println(temp);
		}
		
		model.addAttribute("selectTodo", todolist);
		model.addAttribute("completion", comlist);
		
	}

	
	// Todo 완료
	@RequestMapping("/updateTodo")
	public String updateTodo(String hSeq) {
		System.out.println("updateTodo 확인 : " + hSeq);
		String[] test;
		test = hSeq.split(",");
		for (String i : test) {
			System.out.println(i);
			historyService.updateTodo(i);
		}
		return "redirect:todo";
		
		
	}
	@RequestMapping("/deleteTodo")
	public String deleteTodo(String hSeq) {
		System.out.println("deleteTodo 확인 : " + hSeq);
		String[] test;
		test = hSeq.split(",");
		for (String i : test) {
			System.out.println(i);
			historyService.deleteTodo(i);
		}
		return "redirect:todo";
		
		
	}
}
 