package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.MyStudyVO;

@Mapper
public interface MyStudyDAO {

	public List<MyStudyVO> favorRoom(MyStudyVO vo);
	public List<MyStudyVO> checkdate(String date);
}
