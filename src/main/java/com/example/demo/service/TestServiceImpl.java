package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.TestDAO;
import com.example.demo.vo.TestVO;

@Service
public class TestServiceImpl implements TestService{

	@Autowired
	private TestDAO testDAO;
	
	@Override
	public TestVO getTest(TestVO vo) {
		return testDAO.getTest(vo);
	}
}
