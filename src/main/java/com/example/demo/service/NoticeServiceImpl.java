package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.NoticeDAO;
import com.example.demo.vo.NoticeVO;
import com.example.demo.vo.ReportVO;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDAO noticeDAO;
	
	// 게시글 등록
	public void insertNotice(NoticeVO noticeVO) {
		noticeDAO.insertNotice(noticeVO);
	}
	
	public List<NoticeVO> selectAllNotice(NoticeVO noticeVO) {
		System.out.println(noticeVO.toString());
		return noticeDAO.selectAllNotice(noticeVO);
	}
	
	public List<NoticeVO> selectFiveNotice(NoticeVO noticeVO) {
		System.out.println(noticeVO.toString());
		return noticeDAO.selectFiveNotice(noticeVO);
	}
	
	public NoticeVO seleteNoticeBoard(NoticeVO noticeVO) {
		return noticeDAO.seleteNoticeBoard(noticeVO);
	}
	
	public void updateNoticeBoard(NoticeVO noticeVO) {
		noticeDAO.updateNoticeBoard(noticeVO);
	}
	
	public void deleteNoticeBoard(NoticeVO noticeVO) {
		noticeDAO.deleteNoticeBoard(noticeVO);
	}
	
	public List<NoticeVO> seleteNoticeNext(NoticeVO noticeVO) {
		return noticeDAO.seleteNoticeNext(noticeVO);
	}
	
	public void hitsplus(Integer product_number) {
		noticeDAO.hitsplus(product_number);
	}
	
	public Integer selectCount(Integer nCount) {
		System.out.println("총 개수 : " + nCount);
		return (Integer) noticeDAO.selectCount(nCount);
	}

	// 관리자 게시물 갯수
	@Override
	public int listCount(NoticeVO noticevo) {
		return noticeDAO.listCount(noticevo);
	}
	
}
