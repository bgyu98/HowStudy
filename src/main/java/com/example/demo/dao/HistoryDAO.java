package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.FaqVO;
import com.example.demo.vo.HistoryVO;

@Mapper
public interface HistoryDAO {

	// Todo 등록
	public void insertTodo(HistoryVO vo);

	// Todo List
	public List<HistoryVO> todo(HistoryVO vo);

	// Completion List
	public List<HistoryVO> selectCompletion(HistoryVO vo);

	// Todo List 완료
	void updateTodo(String hSeq);

	// Todo List 삭제
	void deleteTodo(String hSeq);

	// Note 주제 등록
	public void insertNoteTopic(HistoryVO vo);

	// Note 내용 등록
	public void insertNoteTitle(HistoryVO vo);

	// Note 목록
	public List<HistoryVO> selectNote(HistoryVO vo);
	
	// Note 상세조회
	public HistoryVO seleteGetNote(HistoryVO vo);
	
	// Note 마지막 내역 조회
	public HistoryVO seleteEndNote(HistoryVO vo);
	
	// Note 삭제
	public void deleteNote(HistoryVO vo);
	
	// Note 수정
	public void updateNote(HistoryVO vo);
}
