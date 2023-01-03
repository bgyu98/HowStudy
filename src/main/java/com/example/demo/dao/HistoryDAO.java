package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

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
	
	// Todo List 완료
	void deleteTodo(String hSeq);
}
