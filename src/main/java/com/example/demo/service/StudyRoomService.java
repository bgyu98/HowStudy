package com.example.demo.service;


import java.util.List;

import com.example.demo.vo.StudyRoomVO;

public interface StudyRoomService {

	// 스터디룸 등록
	public void insertRoom(StudyRoomVO vo);

	// 내가 만든 스터디룸
	public List<StudyRoomVO> myroomlist(StudyRoomVO vo);

	// 내가 만든 스터디룸에 찍히는 하트
	public Integer checkheart(Integer sNum);
		
}
