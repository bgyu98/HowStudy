package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.OfflineVO;

public interface OfflineService {

	
	// 매장리스트
	public List<OfflineVO> selectOffline(OfflineVO offlineVO);
	
	// 매장 총 개수
	public int count();
	


	
	
}
