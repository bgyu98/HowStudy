package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.HistoryVO;

public interface HistoryService {

	// Todo 등록
	void insertTodo(HistoryVO vo);
	
	// Todo 목록
	List<HistoryVO> todo(HistoryVO vo);
	
	// Completion List
	List<HistoryVO> selectCompletion(HistoryVO vo);
	
	// Todo 완료
	void updateTodo(String hSeq);
	
	// Todo List 완료
	void deleteTodo(String hSeq);
}
