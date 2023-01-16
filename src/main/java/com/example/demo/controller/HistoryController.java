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
import com.example.demo.service.RecordService;
import com.example.demo.vo.HistoryVO;
import com.example.demo.vo.RecordVO;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/study")
public class HistoryController {

	@Autowired
	private HistoryService historyService;
	
	@Autowired
	private RecordService recordService;

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
	public String insertNoteTopic(HistoryVO vo) {
		System.out.println("insertNoteTopic 확인 : " + vo);
		historyService.insertNoteTopic(vo);
		String mId = vo.getmId();
		return "redirect:note?mId="+mId;
	}

	// Note 내용 등록
	@RequestMapping("/insertNoteTitle")

	public String insertNoteTitle(HistoryVO vo) {
		System.out.println("insertNoteTitle 확인 : " + vo);
		historyService.insertNoteTitle(vo);
		String mId = vo.getmId();
		return "redirect:note?mId="+mId;

	}

	// Note 목록
	@RequestMapping(value = { "/note" })
	public void selectNote(HistoryVO vo, Model m,String hSeq) {
		Note(vo, m);
		HistoryVO result = historyService.seleteEndNote(vo);
		System.out.println("확인 : " + result);
		
		m.addAttribute("seleteEndNote", result);

	}

	// Note 파일 업로드
	@RequestMapping(value = "test", method = RequestMethod.POST)
	public ResponseEntity<?> summerimage(@RequestParam("file") MultipartFile img, HttpServletRequest request)
			throws IOException {
		String path = request.getServletContext().getRealPath("/noteImages");			// 파일 업로드할 경로 

		Random random = new Random();		//랜던값 주기

		long currentTime = System.currentTimeMillis();		//현재시각을 밀리세컨드 단위로 반환
		int randomValue = random.nextInt(100);				// 랜덤값 주기
		String fileName = Long.toString(currentTime) + "_" + randomValue + "_a_" + img.getOriginalFilename();  // 현재시각_랜덤_파일오리지널이름 
		File file = new File(path, fileName);  // 경로 + fileName 


		img.transferTo(file);  // 파일 업로드

		return ResponseEntity.ok().body("/noteImages/" + fileName);	// 파일경로와 이름 리턴

	}
	
	// Note 상세
	@RequestMapping("seleteGetNote")
	public void seleteGetNote (HistoryVO vo, Model m) {
		Note(vo, m);
		System.out.println("확인2222 : " + vo);
		HistoryVO result = historyService.seleteGetNote(vo);
		System.out.println(result);
		String mId = result.getmId();
		System.out.println(mId);
		m.addAttribute("note",result);
	}
	
	// note 수정
	@RequestMapping("updateNote")
	public String updateNote(HistoryVO vo) {
		System.out.println("updateNote : " + vo);
		historyService.updateNote(vo);
		int hSeq = vo.gethSeq();
		String mId = vo.getmId();
		
		return "redirect:seleteGetNote?hSeq="+hSeq+"&mId="+mId;
	}
	
	// note 삭제
	@RequestMapping("deleteNote")
	public String deleteNote (HistoryVO vo) {
		System.out.println("deleteNote : " + vo);
		historyService.deleteNote(vo);
		String mId = vo.getmId();
		return "redirect:note?mId="+mId;
	}
	
	// Note 좌측 카테고리 함수
	public void Note(HistoryVO vo, Model m) {
		System.out.println("selectNote 확인 : " + vo);
		List<HistoryVO> result = historyService.selectNote(vo);
		List<HistoryVO> finalResult = new ArrayList<HistoryVO>();
		List<String> list = new ArrayList<String>(); // hSeqs 값을 담을 변수

		// result : DB에서 가져온 List< HistoryVO >
		// finalResult : 뷰단으로 중복제거하고 보낼 List< HistoryVO >

		for (int i = 0; i < result.size(); i++) {
			HistoryVO willVO = result.get(i); // willVO : DB에서 가져온 List의 HistoryVO
			String exGTopic = willVO.getgTopic(); // exGTopic : DB에서 가져온 istoryVO의 gTopic

			if (exGTopic != null) // exGTopic 이 null이 아닐경우
			{
				boolean flag = false;

				for (HistoryVO finalVO : finalResult) {
					
					if (finalVO.getgTopic().equals(exGTopic)) { // finalVO 의 gTopic 값이 exGTopic gTopic 값이 같은경우

						String seqTitle = willVO.getgTitle(); // vo 의 gTitle 값
						String notequalTitle = finalVO.getgTitle(); // finalVO 의 gTitle 값
						finalVO.setgTitle(notequalTitle + "/" + seqTitle);

						int seqhSeq = willVO.gethSeq(); // vo 의 gSeq 값
						int notequalhSeq = finalVO.gethSeq(); // finalVO 의 gSeq 값
						String SnotequalhSeq = Integer.toString(notequalhSeq); // finalVO 의 gSeq 값을 Stirng 형변환

						String finalHseq = finalVO.gethSeqs();
						if (finalHseq == null)
							finalHseq = SnotequalhSeq; // ee 값의 null인경우 ff로 값 대체
						System.out.println("ccc : " +finalHseq);

						finalVO.sethSeqs(finalHseq + "/" + seqhSeq);
					

						flag = true;
					}

				}

				if (!flag) { // false 가 아닌경우 ( gTopic 이 같지 않을경우 )
					HistoryVO resultVO= result.get(i);
					int hSeq = resultVO.gethSeq();
					resultVO.sethSeqs(Integer.toString(hSeq));
					
					finalResult.add(resultVO); // finalResult 에 붙이기
					

				}
				System.out.println("확인2 :  " + finalResult);

			}
		}
		System.out.println(finalResult);
		
		for (HistoryVO temp : finalResult) {	
			if ( temp.gethSeqs() != null) {
			String spiltSeq = temp.gethSeqs();
			String[] spiltSeq2 = spiltSeq.split("/");
			for (String finalspiltSeq : spiltSeq2) {
				list.add(finalspiltSeq);					// list 변수에 hSeqs for 문으로 하나씩 뽑아  변수 붙이기
				System.out.println(finalspiltSeq);

			}
			}
		}

		m.addAttribute("selectNote", finalResult);			
		m.addAttribute("selectHSeqs", list);
		System.out.println(list);

	}
	
	
	
	// Record (공부기록)
	@RequestMapping("/saveTime")
	@ResponseBody
	public String saveTime(RecordVO vo,Model m, HttpSession session ) {
		
		System.out.println("시간 체크 ajax 실행");
		/* 필요한 데이터 잘 넘어왔는지 체크 [ 아이디, 방 번호, 공부한 시간, 현재 날짜*/
		String loginId = (String) session.getAttribute("loginId");
		System.out.println("로그인 아이디 : " + loginId);
		vo.setmId(loginId);
		System.out.println("방 번호 : " +vo.getsNum());
		System.out.println("공부한 시간 : "+vo.getsTime());
		System.out.println("현재 날짜 : " + vo.getNowDay());
		
		/* 잘 넘어왔는지 확인했으니 관련 입력문 실행 */
		recordService.saveTime(vo);
		
		return "";
		
		
	}
	

}
