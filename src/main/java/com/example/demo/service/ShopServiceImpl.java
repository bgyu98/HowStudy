package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.ShopDAO;
import com.example.demo.dao.UserDAO;
import com.example.demo.vo.ShopVO;
import com.example.demo.vo.UserVO;

@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	private ShopDAO shopDAO;
	
	
	@Override
	public List<ShopVO> selectTicketVOList(ShopVO vo) {
		return shopDAO.selectTicket(vo);
	}


}
