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
	
	// 관리자 신고 리스트 
	public List<ReportVO> manageReportList(ReportVO vo);
		
	// 관리자 신고 상세
	public ReportVO getReport(Integer rNum);
	
	// 관리자 신고 갯수
	public int listCount(ReportVO vo);
	
	// 관리자 신고 회원별 상세
	public List<ReportVO> getUserReport(String mId);
	
	//관리자 신고 접수
	public void updateReport(ReportVO vo);
}
