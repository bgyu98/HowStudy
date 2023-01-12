package com.example.demo.dao;


import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.MembershipVO;
import com.example.demo.vo.UserVO;

@Mapper
public interface MembershipDAO {

	//티켓 구매
	public void buyTicket(MembershipVO vo);
	
}
