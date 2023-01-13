package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.ReportVO;

public interface ReportService {

	
	public void insertReportVO(ReportVO vo);
	
	public List<ReportVO> getReportList(ReportVO vo);
	
	
}
