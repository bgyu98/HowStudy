package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.RecordVO;
import com.example.demo.vo.UserVO;

public interface RecordService {
	
	// 타이머 클릭 시 시간 저장
	public void saveTime(RecordVO vo);
	
	
	// 일 누적 시간
	List<RecordVO> todayStudyTime(RecordVO vo);
	
	// 일 별 평균 시간
	List<RecordVO> todayAvgTime(RecordVO vo);

	// 월 별 누적 시간
	List<RecordVO> totalStudyTime(RecordVO vo);
	
	
	// 일 별 평균 계산 위한 리스트 수 체크
	List<RecordVO> checkDate(RecordVO vo);
	
	
	// 태그 별 공부 시간 
	List<RecordVO> saveTagTime(RecordVO vo);
	
	// 기간 별 공부 시간
	List<RecordVO> saveDateTime(RecordVO vo);
	
	// 회원 등급 체크
	List<UserVO> checkGrade(UserVO vo);
	
}
