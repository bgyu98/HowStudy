package com.example.demo.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.service.HistoryService;
import com.example.demo.vo.HistoryVO;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;

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
	@RequestMapping(value = { "/todo" })
	public void todo(HistoryVO vo, Model model) {
		System.out.println("todoCon확인" + vo);
		List<HistoryVO> todolist = historyService.todo(vo);
		System.out.println(todolist);
		for (HistoryVO temp : todolist) {
			System.out.println("확인 : " + temp);
		}
		System.out.println("=========================");
		List<HistoryVO> comlist = historyService.selectCompletion(vo);
		for (HistoryVO temp : comlist) {
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
		String[] mIdValue = mId.split(",");
		vo.setmId(mIdValue[0]);
		List<HistoryVO> todolist = historyService.selectCompletion(vo);
		System.out.println("확인1 : " + todolist);
		String json = new Gson().toJson(todolist);
		System.out.println("완료json : " + json);
		return json;

	}

	// Todo 삭제
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

	// Note 주제 등록
	@RequestMapping("/insertNoteTopic")
	@ResponseBody
	public void insertNoteTopic(HistoryVO vo) {
		System.out.println("insertNoteTopic 확인 : " + vo);
		historyService.insertNoteTopic(vo);
	}

	// Note 주제 등록
	@RequestMapping("/insertNoteTitle")
	@ResponseBody
	public void insertNoteTitle(HistoryVO vo) {
		System.out.println("insertNoteTitle 확인 : " + vo);
		historyService.insertNoteTitle(vo);
	}

	// Note 목록
	@RequestMapping(value = { "/note" })
	public void selectNote(HistoryVO vo, Model m) {
		System.out.println("selectNote 확인 : " + vo);
		List<HistoryVO> result = historyService.selectNote(vo);
		List<HistoryVO> finalResult = new  ArrayList<HistoryVO>();
		

		for (int i=0; i < result.size(); i++) {
			
			String test = result.get(i).getgTopic(); 
			System.out.println("in for : " +test);
			if( test != null)
			{
				boolean flag = false;
				for(HistoryVO tempVO : finalResult) {
					if( tempVO.getgTopic().equals(test)) {
						System.out.println("같다");
						
						// 
						String aa = result.get(i).getgTitle();
						String bb = tempVO.getgTitle();
						System.out.println("현재 : " + aa);
						System.out.println("이전 : " + bb);
						result.get(i-1).setgTitle(bb + "/" +aa);
						flag = true;
					}
					
				}
				
				if(!flag) {
					finalResult.add(result.get(i));
					
				}
				System.out.println("확인4 : " +finalResult);
			}
		}
	

		m.addAttribute("selectNote", finalResult);

	}
	
	@RequestMapping(value="test", method=RequestMethod.POST)
	public ResponseEntity<?> summerimage(@RequestParam("file") MultipartFile img, HttpServletRequest request) throws IOException {
		String path = request.getServletContext().getRealPath("/noteImages");
		System.out.println("확인1 : "+path);
		

		Random random = new Random();
	
		long currentTime = System.currentTimeMillis();
		int	randomValue = random.nextInt(100);
		System.out.println("확인2 : "+currentTime);
		System.out.println("확인3 : "+randomValue);
		String fileName = Long.toString(currentTime) + "_"+randomValue+"_a_"+img.getOriginalFilename();
		System.out.println("확인4 : "+fileName);
		File file = new File(path , fileName);
		System.out.println("확인5 : "+file);
		
		img.transferTo(file);

		return ResponseEntity.ok().body("/noteImages/" + fileName);

	}

}
