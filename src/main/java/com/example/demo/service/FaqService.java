package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.FaqVO;

public interface FaqService {

	// 게시물 등록
	public void insertFaqBoard(FaqVO faqvo);
	
	// 게시물 리스트 조회
	List<FaqVO> getFaqBoardList(FaqVO faqvo);		
	
	// 게시물 수정
	public void updateFaqBoard(FaqVO faqvo);
	
	// 게시글 상세 조회
	public FaqVO seleteFaqBoard(FaqVO faqVO);
	
	// 게시글 삭제
	public void deleteFaqBoard(FaqVO faqVO);
	
	
}
