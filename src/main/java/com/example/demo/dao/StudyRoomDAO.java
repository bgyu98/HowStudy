package com.example.demo.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.HistoryVO;
import com.example.demo.vo.StudyRoomVO;

@Mapper
public interface StudyRoomDAO {

	// 스터디룸 등록
	public void insertRoom(StudyRoomVO vo);
}
