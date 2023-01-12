package com.example.demo.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.MyStudyDAO;
import com.example.demo.vo.MyStudyVO;

@Service
public class MyStudyServiceImpl implements MyStudyService{

	@Autowired
	private MyStudyDAO mystudyDAO;

	// 즐겨찾기 값들 출력
	@Override
	public List<HashMap> favorRoom(MyStudyVO vo) {
		return mystudyDAO.favorRoom(vo);
	}

	// 체크한 기간 별 해당 값 출력
	@Override
	public List<HashMap> checkdate(MyStudyVO vo) {
		return mystudyDAO.checkdate(vo);
	}

	// 즐겨찾기 테이블에 해당 방번호와 아이디 추가
	@Override
	public void insertfavor(MyStudyVO vo) {
		mystudyDAO.insertfavor(vo);
	}

	// 즐겨찾기 테이블에 해당 방번호와 아이디 삭제
	@Override
	public void deletefavor(MyStudyVO vo) {
		mystudyDAO.deletefavor(vo);
	}



	// 아이디 별 해당 방 번호의 즐겨찾기 개수 호출 
	@Override
	public Integer checkheart(Integer sNum) {
		return mystudyDAO.checkheart(sNum);
	}

	// 아이디 별 즐겨찾기한 방 번호들 호출 
	@Override
	public List<Integer> checkroom(String mId) {
		return mystudyDAO.checkroom(mId);
	}	
	
	// 아이디 별 방문한 방 번호들 호출 
	@Override
	public List<MyStudyVO> rogRoom(MyStudyVO vo) {
		return mystudyDAO.rogRoom(vo);
	}		
	
	// 방 번호 별 즐겨찾기 여부 확인
	@Override
	public Integer checkRoomHeart(MyStudyVO vo) {
		return mystudyDAO.checkRoomHeart(vo);
	}		
}
