package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

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

	// 스터디룸 검색
	public List<StudyRoomVO> searchItems(String items);

	// 태그별 스터디룸 출력
	public List<StudyRoomVO> searchStudy(String keyword);

	// 전체 스터디룸 출력
	public List<StudyRoomVO> allStudy(StudyRoomVO vo);
	
	// 스터디룸 조회수 증가
	public void stdHitsplus(Integer sNum);
	
	// 방 생성 후 채팅 페이지 (조회수 증가 test)
	public StudyRoomVO seleteStudyRoom(Integer sNum);
	
	// 랭킹 별 스터디룸 출력
	public List<StudyRoomVO> selectScnt(StudyRoomVO vo);

}