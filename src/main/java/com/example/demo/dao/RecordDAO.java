package com.example.demo.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.RecordVO;

@Mapper
public interface RecordDAO {
	public void saveTime(RecordVO vo);
}
