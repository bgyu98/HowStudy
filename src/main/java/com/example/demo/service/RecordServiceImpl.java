package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.RecordDAO;
import com.example.demo.vo.RecordVO;

@Service
public class RecordServiceImpl implements RecordService{
	@Autowired
	RecordDAO recordDAO;
	
	public void saveTime(RecordVO vo) {
		recordDAO.saveTime(vo);
	}

}
