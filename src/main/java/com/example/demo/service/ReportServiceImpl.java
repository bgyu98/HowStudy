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

	@Override
	public void updateReport(ReportVO vo) {
		System.out.println("서비스먹냐?");
		reportDAO.updateReport(vo);
	}
}
