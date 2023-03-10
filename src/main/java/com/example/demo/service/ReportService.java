package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.ReportVO;

public interface ReportService {

	public void insertReportVO(ReportVO vo);

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
	
	//rNum갖고오기
	public ReportVO checkrNum(ReportVO vo);
}
