package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.NoticeVO;
import com.example.demo.vo.ReportVO;

public interface NoticeService {

	public void insertNotice(NoticeVO noticeVO);

	public List<NoticeVO> selectAllNotice(NoticeVO noticeVO);

	public List<NoticeVO> selectFiveNotice(NoticeVO noticeVO);

	public NoticeVO seleteNoticeBoard(NoticeVO noticeVO);

	public void updateNoticeBoard(NoticeVO noticeVO);

	public void deleteNoticeBoard(NoticeVO noticeVO);

	public List<NoticeVO> seleteNoticeNext(NoticeVO noticeVO);

	public void hitsplus(Integer product_number);

	public Integer selectCount(Integer nCount);

	// 관리자 게시물 갯수
	public int listCount(NoticeVO noticevo);
}
