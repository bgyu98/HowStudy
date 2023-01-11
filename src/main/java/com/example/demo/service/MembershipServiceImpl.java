package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.MembershipDAO;
import com.example.demo.vo.MembershipVO;
import com.example.demo.vo.UserVO;

@Service
public class MembershipServiceImpl implements MembershipService {

	@Autowired
	private MembershipDAO membershipDAO;
	
	@Override
	public void buyTicket(MembershipVO vo) {
		membershipDAO.buyTicket(vo);
	}

}
