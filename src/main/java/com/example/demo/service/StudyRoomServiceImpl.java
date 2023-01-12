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
		System.out.println("insertRoomS 확인"+ vo);
		studyroomDAO.insertRoom(vo);
	}
	
	public List<StudyRoomVO> searchItems(String items) {
		return studyroomDAO.searchItems(items);
	}
	
	public List<StudyRoomVO> searchStudy(String keyword) {	
		System.out.println("service   ;"+ keyword);
		return studyroomDAO.searchStudy(keyword);
	}
	
	public List<StudyRoomVO> allStudy(StudyRoomVO vo) {
		System.out.println("service vo 전체출력 :"+ vo);
		return studyroomDAO.allStudy(vo);
	}
}
