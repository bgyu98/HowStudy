package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.NoticeVO;

public interface NoticeService {

	public void insertNotice(NoticeVO noticeVO);	
	
	public List<NoticeVO> selectAllNotice(NoticeVO noticeVO);
	
	// 게시물 리스트 조회 (5개만)
	public List<NoticeVO> selectFiveNotice(NoticeVO noticeVO);
	
	public NoticeVO seleteNoticeBoard(NoticeVO noticeVO);
	
	public void updateNoticeBoard(NoticeVO noticeVO);	
	
	public void deleteNoticeBoard(NoticeVO noticeVO);
	
	public List<NoticeVO> seleteNoticeNext(NoticeVO noticeVO);
	
	public void hitsplus(Integer product_number);
	
	public Integer selectCount(Integer nCount);
}
