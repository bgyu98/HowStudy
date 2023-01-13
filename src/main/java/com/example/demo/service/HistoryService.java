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

	// Note 주제 등록
	void insertNoteTopic(HistoryVO vo);

	// Note 내용 등록
	void insertNoteTitle(HistoryVO vo);

	// Note 목록
	List<HistoryVO> selectNote(HistoryVO vo);

	// Note 상세조회
	HistoryVO seleteGetNote(HistoryVO vo);
	
	// Note 마지막 내역 조회
	HistoryVO seleteEndNote(HistoryVO vo);
	
	// Note 삭제
	void deleteNote(HistoryVO vo);
	
	// Note 수정
	void updateNote(HistoryVO vo);
}
