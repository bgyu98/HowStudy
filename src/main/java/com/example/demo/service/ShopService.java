package com.example.demo.service;

import java.util.List;

import com.example.demo.vo.ShopVO;

public interface ShopService {

	public List<ShopVO> selectTicketVOList(ShopVO vo);
}
