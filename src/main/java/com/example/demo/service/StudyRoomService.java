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

	// 아이디 별 즐겨찾기 여부 체크
	public Integer checkRoomHeart(StudyRoomVO vo);

	// 스터디룸 검색
	public List<StudyRoomVO> searchItems(String items);

	// 태그별 스터디룸 나열
	public List<StudyRoomVO> searchStudy(String keyword);

	// 전체 스터디룸 출력
	public List<StudyRoomVO> allStudy(StudyRoomVO vo);

}