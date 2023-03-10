package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.FaqVO;

@Mapper
public interface FaqDAO {

	// 게시물 등록
	public void insertFaqBoard(FaqVO faqVO);	

	// 게시물 리스트 조회
	public List<FaqVO> getFaqBoardList(FaqVO faqVO);
	
	// 게시물 수정
	public void updateFaqBoard(FaqVO faqVO);	
	
	//글 상세조회
	public FaqVO seleteFaqBoard(FaqVO faqVO);
	
	//글 삭제
	public void deleteFaqBoard(FaqVO faqVO);
	
}
