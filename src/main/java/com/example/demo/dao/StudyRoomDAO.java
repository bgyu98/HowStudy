package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.HistoryVO;
import com.example.demo.vo.StudyRoomVO;

@Mapper
public interface StudyRoomDAO {

	// 스터디룸 등록
	public void insertRoom(StudyRoomVO vo);

	// 내가 만든 스터디룸
	public List<StudyRoomVO> myroomlist(StudyRoomVO vo);

	// 내가 만든 스터디룸에 찍히는 하트
	public Integer checkheart(Integer sNum);

	// 즐겨찾기 여부 확인
	public Integer checkRoomHeart(StudyRoomVO vo);
}
