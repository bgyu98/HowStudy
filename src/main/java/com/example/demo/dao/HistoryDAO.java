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
}
