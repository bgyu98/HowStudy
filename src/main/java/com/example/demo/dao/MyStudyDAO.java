package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.MyStudyVO;

@Mapper
public interface MyStudyDAO {

	public List<HashMap> favorRoom(MyStudyVO vo);
	public List<MyStudyVO> checkdate(String date);
	public void insertfavor(MyStudyVO vo);
	public void deletefavor(MyStudyVO vo);
	public List<HashMap> checkfavor(MyStudyVO vo);
	public Integer checkheart(Integer sNum);
	public List<Integer> checkroom(MyStudyVO vo);
	
}
