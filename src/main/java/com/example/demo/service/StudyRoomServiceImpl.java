package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.StudyRoomDAO;
import com.example.demo.vo.StudyRoomVO;

@Service
public class StudyRoomServiceImpl implements StudyRoomService {

	@Autowired
	private StudyRoomDAO studyroomDAO;

	// 스터디룸 생성
	@Override
	public void insertRoom(StudyRoomVO vo) {
		System.out.println("insertRoomS 확인" + vo);
		studyroomDAO.insertRoom(vo);
	}

	// 내가 만든 스터디룸
	public List<StudyRoomVO> myroomlist(StudyRoomVO vo) {
		return studyroomDAO.myroomlist(vo);
	}

	// 내가 만든 스터디룸에 찍히는 하트
	public Integer checkheart(Integer sNum) {
		return studyroomDAO.checkheart(sNum);
	}

	// 아이디 별 즐겨찾기 여부 체크
	@Override
	public Integer checkRoomHeart(StudyRoomVO vo) {
		return studyroomDAO.checkRoomHeart(vo);
	}

}
