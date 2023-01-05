package com.example.demo.service;

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
}
