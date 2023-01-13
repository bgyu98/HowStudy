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
}
