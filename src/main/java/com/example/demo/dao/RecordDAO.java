package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.RecordVO;
import com.example.demo.vo.UserVO;

@Mapper
public interface RecordDAO {
	// 타이머 클릭 시 시간 누적
	public void saveTime(RecordVO vo);
	
	// 일 누적 시간
	public List<RecordVO> todayStudyTime(RecordVO vo);
		
	// 일 별 평균 시간
	public List<RecordVO> todayAvgTime(RecordVO vo);

	// 월 별 누적 시간
	public List<RecordVO> totalStudyTime(RecordVO vo);
	
	// 일 별 평균 계산 위한 리스트 수 체크
	public List<RecordVO> checkDate(RecordVO vo);
	
	// 태그 별 누적 시간
	public List<RecordVO> saveTagTime(RecordVO vo);
	
	// 기간 별 공부 시간
	public List<RecordVO> saveDateTime(RecordVO vo);
	
	// 회원 등급 체크
	public List<UserVO> checkGrade(UserVO vo);
	
	// 랭킹 목록 출력
	public List<RecordVO> ranking(RecordVO vo);
	
}
