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

	//Todo 등록
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

}
