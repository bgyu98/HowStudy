package com.example.demo.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.ReportVO;

@Mapper
public interface ReportDAO {
	
	//신고 입력
	public void insertReport(ReportVO vo);
}
