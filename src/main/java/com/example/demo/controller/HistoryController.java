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
	
	@RequestMapping("/insertTodo")
	public void insertTodo(HistoryVO vo) {
		System.out.println("controller 확인");
		historyService.insertTodo(vo);
		//return "redirect:todo";
	}
	
	@RequestMapping("/todo")
	public void todo(HistoryVO vo, Model model) {
		System.out.println("todoCon확인");
		List<HistoryVO> list = historyService.todo(vo);
		for(HistoryVO temp : list) {
			System.out.println(temp);
		}
		
		model.addAttribute("selectTodo", list);
	}
}
 