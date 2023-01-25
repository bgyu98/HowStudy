package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.RecordDAO;
import com.example.demo.vo.RecordVO;

@Service
public class RecordServiceImpl implements RecordService{
	@Autowired
	RecordDAO recordDAO;
	
	// 타이머 클릭 시 시간 누적
	public void saveTime(RecordVO vo) {
		recordDAO.saveTime(vo);

	}
	
	 
	// 오늘 누적 시간
	public List<RecordVO> todayStudyTime(RecordVO vo){
		return recordDAO.todayStudyTime(vo); 
	}
		
	// 일 별 평균 시간
	public List<RecordVO> todayAvgTime(RecordVO vo){
		return recordDAO.todayAvgTime(vo); 
	}
		

	// 월 별 누적 시간
	public List<RecordVO> totalStudyTime(RecordVO vo){
		return recordDAO.totalStudyTime(vo); 
	}
	
	// 일 별 평균 계산 위한 리스트 수 체크
	public List<RecordVO> checkDate(RecordVO vo){
		return recordDAO.checkDate(vo);
	}
	
	
	// 태그 별 공부 시간 
	public List<RecordVO> saveTagTime(RecordVO vo){
		return recordDAO.saveTagTime(vo);
	}
	
	// 기간 별 공부 시간
	public List<RecordVO> saveDateTime(RecordVO vo){
		return recordDAO.saveDateTime(vo);
	}
	
	

}
