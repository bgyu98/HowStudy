package com.example.demo.service;

import java.util.List;
import com.example.demo.vo.StudyRoomVO;

public interface StudyRoomService {

	// 스터디룸 등록
	public void insertRoom(StudyRoomVO vo);

	// 내가 만든 스터디룸
	public List<StudyRoomVO> myroomlist(StudyRoomVO vo);

	// 방 번호 별 하트 개수
	public Integer checkheart(Integer sNum);

	// 아이디 별 즐겨찾기 여부 체크
	public Integer checkRoomHeart(StudyRoomVO vo);

	// 스터디룸 검색
	public List<StudyRoomVO> searchItems(String items);

	// 태그별 스터디룸 나열
	public List<StudyRoomVO> searchStudy(String keyword);

	// 전체 스터디룸 출력
	public List<StudyRoomVO> allStudy(StudyRoomVO vo);
	
	// 스터디룸 조회수 증가
	public void stdHitsplus(Integer sNum);
	
	// sNum 잘 받아오는지 test
	public StudyRoomVO seleteStudyRoom(Integer sNum);
	
	// 랭킹 별 스터디룸 출력
	public List<StudyRoomVO> selectScnt(StudyRoomVO vo);
	
	public List<StudyRoomVO> saveDate(StudyRoomVO vo);
	
	// 입장시 방문 기록 저장
	public void roomRog(StudyRoomVO vo);
}