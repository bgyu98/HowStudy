package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.NoticeVO;

public interface NoticeService {

	public void insertNotice(NoticeVO noticeVO);	
	
	public List<NoticeVO> selectAllNotice(NoticeVO noticeVO);
	
	public NoticeVO seleteNoticeBoard(NoticeVO noticeVO);
	
	public void updateNoticeBoard(NoticeVO noticeVO);	
	
	public void deleteNoticeBoard(NoticeVO noticeVO);
	
	public List<NoticeVO> seleteNoticeNext(NoticeVO noticeVO);
}
