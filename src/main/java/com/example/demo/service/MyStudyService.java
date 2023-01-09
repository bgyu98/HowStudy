package com.example.demo.service;

import java.util.HashMap;
import java.util.List;

import com.example.demo.vo.MyStudyVO;

public interface MyStudyService {

	// 즐겨찾기한 스터디 룸 출력
	List<HashMap> favorRoom(MyStudyVO vo);
	
	// 기간 별 데이터 출력
	List<MyStudyVO> checkdate(String date);
	
	
	// 즐겨찾기 테이블에 해당 방번호와 아이디 추가
	void insertfavor(MyStudyVO vo);
	
	// 즐겨찾기 테이블에 해당 방번호와 아이디 삭제
	void deletefavor(MyStudyVO vo);
	
	//  해당 방 번호의 즐겨찾기 개수 호출 
	List<HashMap> checkfavor(MyStudyVO vo);
	
	// 해당 방 번호의 즐겨찾기 개수 호출 
	Integer checkheart(Integer sNum);
	
	// 아이디 별 즐겨찾기한 방 번호들 호출 
	List<Integer> checkroom(MyStudyVO vo); 
}
