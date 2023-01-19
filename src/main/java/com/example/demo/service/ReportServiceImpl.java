package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.ReportDAO;
import com.example.demo.vo.ReportVO;

@Service
public class ReportServiceImpl implements ReportService {

	@Autowired
	private ReportDAO reportDAO;
	
	@Override
	public void insertReportVO(ReportVO vo) {
		reportDAO.insertReport(vo);
	}
	
	@Override
	public List<ReportVO> getReportList(ReportVO vo) {
		return reportDAO.getReportList(vo);
	}

	// 관리자 신고 리스트 
	@Override
	public List<ReportVO> manageReportList(ReportVO vo) {
		return reportDAO.manageReportList(vo);
	}

	// 관리자 신고 상세
	@Override
	public ReportVO getReport(Integer rNum) {
		return reportDAO.getReport(rNum);
	}

	// 관리자 신고 갯수
	@Override
	public int listCount(ReportVO vo) {
		return reportDAO.listCount(vo);
	}

	// 관리자 신고 회원별 상세
	@Override
	public List<ReportVO> getUserReport(String mId) {
		return reportDAO.getUserReport(mId);
	}
}
