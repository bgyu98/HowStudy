package com.example.demo.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.TestVO;

@Mapper
public interface TestDAO {

	public TestVO getTest(TestVO vo);
}
