package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.MyStudyVO;

public interface MyStudyService {

	// 선호 스터디 룸 출력
	List<MyStudyVO> favorRoom(MyStudyVO vo);
	List<MyStudyVO> checkdate(String date);
}
