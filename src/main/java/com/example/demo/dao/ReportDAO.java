package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.ReportVO;

@Mapper
public interface ReportDAO {
	
	//신고 입력
	public void insertReport(ReportVO vo);
	
	// 신고 리스트 조회
	public List<ReportVO> getReportList(ReportVO vo);
		
}
