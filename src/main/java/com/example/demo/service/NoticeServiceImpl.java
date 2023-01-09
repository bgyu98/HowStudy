package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.NoticeDAO;
import com.example.demo.vo.NoticeVO;

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
	
	public NoticeVO seleteNoticeBoard(NoticeVO noticeVO) {
		System.out.println("노티스서비스돔");
		return noticeDAO.seleteNoticeBoard(noticeVO);
	}
	
}
