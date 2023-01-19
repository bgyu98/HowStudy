package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.OfflineVO;


@Mapper
public interface OfflineDAO {
	
	
	// 오프라인 매장 검색
	public List<OfflineVO> selectOffline(OfflineVO offlineVO);
	
	// 매장 총 개수
	public int count();
	

	
	
	
	
	

	
}
