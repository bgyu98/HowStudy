package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.HistoryService;
import com.example.demo.vo.HistoryVO;
import com.google.gson.Gson;

import jakarta.annotation.Resource;
import net.minidev.json.JSONArray;

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
	@ResponseBody
	public String insertTodo(HistoryVO vo) {
		System.out.println("controller 확인");
		historyService.insertTodo(vo);
		// [2] 인 경우라면 selectTodos()에서 List<HistroyVO> 가져오는데 json 객체로 변경하고 그것을 리턴
		List<HistoryVO> todolist = historyService.todo(vo);
		String json = new Gson().toJson(todolist);
		System.out.println(json);
		
		return json;
	}
	
	// Todo 목록
	@RequestMapping(value = {"/todo"})
	public void todo(HistoryVO vo, Model model ) {
		System.out.println("todoCon확인" + vo);
		List<HistoryVO> todolist = historyService.todo(vo);
		System.out.println(todolist);
		for(HistoryVO temp : todolist) {
			System.out.println("확인 : " +temp);
		}
		System.out.println("=========================");
		List<HistoryVO> comlist = historyService.selectCompletion(vo);
		for(HistoryVO temp : comlist) {
			System.out.println(temp);
		}
		
		model.addAttribute("selectTodo", todolist);
		model.addAttribute("completion", comlist);
		
	}

	
	// Todo 완료
	@RequestMapping("/updateTodo")
	@ResponseBody
	public String updateTodo(String hSeq, String mId) {
		System.out.println("updateTodo 확인 : " + hSeq);
		System.out.println("mId:" + mId);
		String[] hsep = hSeq.split(",");	
		for (String i : hsep) {
			System.out.println(i);
			historyService.updateTodo(i);
		}

		HistoryVO vo = new HistoryVO();
		String []mIdValue = mId.split(",");
		vo.setmId(mIdValue[0]);
		List<HistoryVO> todolist = historyService.selectCompletion(vo);
		System.out.println("확인1 : " + todolist);
		String json = new Gson().toJson(todolist);
		System.out.println("완료json : "+ json);
		return json;
		
		
	}
	@RequestMapping("/deleteTodo")
	@ResponseBody
	public void deleteTodo(String hSeq) {
		System.out.println("deleteTodo 확인 : " + hSeq);
		String[] test;
		test = hSeq.split(",");
		for (String i : test) {
			System.out.println(i);
			historyService.deleteTodo(i);
		}
		
		
		
	}
}
 