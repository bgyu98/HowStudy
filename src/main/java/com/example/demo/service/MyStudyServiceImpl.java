package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.MyStudyDAO;
import com.example.demo.vo.MyStudyVO;

@Service
public class MyStudyServiceImpl implements MyStudyService{

	@Autowired
	private MyStudyDAO mystudyDAO;
	
	// 선호 태그 출력
	@Override
	public List<MyStudyVO> favorRoom(MyStudyVO vo) {
		return mystudyDAO.favorRoom(vo);
	}
	
	// 체크한 기간 별 해당 값 출력
	@Override
	public List<MyStudyVO> checkdate(String date) {
		return mystudyDAO.checkdate(date);
	}

}
