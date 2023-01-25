package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.OfflineDAO;
import com.example.demo.vo.OfflineVO;
import com.example.demo.vo.ReportVO;

@Service
public class OfflineServiceImpl implements OfflineService  {
	
	@Autowired
	private OfflineDAO offlineDAO;	

	
	// 오프라인매장검색
	@Override
	public List<OfflineVO> selectOffline(OfflineVO offlineVO) {
		return offlineDAO.selectOffline(offlineVO);
	}


	//게시물 총 개수
	@Override
	public int count() {
		return offlineDAO.count();
	}

	// 페이징
	@Override
	public int listCount(OfflineVO vo) {
		return offlineDAO.listCount(vo);
	}



	

	
}
