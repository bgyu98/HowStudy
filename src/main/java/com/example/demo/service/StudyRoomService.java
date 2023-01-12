package com.example.demo.service;

import java.util.List;
import java.util.Map;

import com.example.demo.vo.StudyRoomVO;

public interface StudyRoomService {

	// 스터디룸 등록
	public void insertRoom(StudyRoomVO vo);
	
	// 스터디룸 검색
	public List<StudyRoomVO> searchItems(String items);
	
	// 태그별 스터디룸 나열
	public List<StudyRoomVO> searchStudy(String keyword);
	
	// 전체 스터디룸 출력
	public List<StudyRoomVO> allStudy(StudyRoomVO vo);

	
	
		
}
