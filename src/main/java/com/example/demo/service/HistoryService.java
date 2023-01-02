package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.HistoryVO;

public interface HistoryService {

	// Todo 등록
	void insertTodo(HistoryVO vo);
	
	// Todo 목록
	List<HistoryVO> todo(HistoryVO vo);
}
