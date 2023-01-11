package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.HistoryDAO;
import com.example.demo.vo.HistoryVO;

@Service
public class HistoryServiceImpl implements HistoryService {

	@Autowired
	private HistoryDAO historyDAO;

	// Todo 등록
	@Override
	public void insertTodo(HistoryVO vo) {
		System.out.println("insertTodo 확인");
		historyDAO.insertTodo(vo);
	}

	// Todo 목록
	@Override
	public List<HistoryVO> todo(HistoryVO vo) {
		System.out.println("todo 확인");
		return historyDAO.todo(vo);
	}

	//Completion
	@Override
	public List<HistoryVO> selectCompletion(HistoryVO vo) {
		System.out.println("selectCompletion 확인");
		return historyDAO.selectCompletion(vo);
	}

	@Override
	public void updateTodo(String hSeq) {
		System.out.println("todo서비스 확인 : " + hSeq );
		historyDAO.updateTodo(hSeq);
	}
	

	// Todo List 완료
	@Override
	public void deleteTodo(String hSeq) {
		System.out.println("todo서비스 확인 : " + hSeq );
		historyDAO.deleteTodo(hSeq);
	}
	// Note 주제 등록
	@Override
	public void insertNoteTopic(HistoryVO vo) {
		historyDAO.insertNoteTopic(vo);
	}

	// Note 목록
	@Override
	public List<HistoryVO> selectNote(HistoryVO vo) {
		return  historyDAO.selectNote(vo);
	}

	// Note 내용 등록
	@Override
	public void insertNoteTitle(HistoryVO vo) {
		historyDAO.insertNoteTitle(vo);
	}
	
	

}
