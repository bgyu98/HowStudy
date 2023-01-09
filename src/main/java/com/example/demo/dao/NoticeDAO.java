package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.NoticeVO;

@Mapper
public interface NoticeDAO {

	// 게시물 등록
	public void insertNotice(NoticeVO noticeVO);	
	
	// 게시물 리스트 조회
	public List<NoticeVO> selectAllNotice(NoticeVO noticeVO);
	
	//글 상세조회
	public NoticeVO seleteNoticeBoard(NoticeVO noticeVO);
	
}
