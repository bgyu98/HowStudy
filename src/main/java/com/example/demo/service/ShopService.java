package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.ShopVO;

public interface ShopService {

	//티켓 리스트 반환
	public List<ShopVO> selectTicketVOList(ShopVO vo);
}
