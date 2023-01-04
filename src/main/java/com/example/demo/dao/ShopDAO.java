package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.ShopVO;

@Mapper
public interface ShopDAO {

	//티켓 목록
	public List<ShopVO> selectTicket(ShopVO vo);
}
