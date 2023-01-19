package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.FaqVO;
import com.example.demo.vo.TestVO;
import com.example.demo.vo.UserVO;

@Mapper
public interface UserDAO {

	// 회원 가입
	public int insertCustomer(UserVO vo);

	// 로그인
	public UserVO loginCustomer(UserVO vo);
	
	//구매 뭐시기
	public UserVO payCustomer(UserVO vo);
	
	//아이디 중복 체크
	public int mIdCheck(String mId);

	//회원정보 수정
	public int updateCustomer(UserVO vo);
	
	//회원정보 조회
	public UserVO getUserInfo(String mId);
	
	//회원정보 삭제
	public int deleteInfo(UserVO vo);
	
	// 회원 정보 삭제를 위한 비밀번호 체크
	public boolean checkPw(String mId, String mPw);
	
	//카카오 회원 정보 찾기
	public UserVO findkakao(HashMap<String, Object> userInfo);
	
	//카카오 회원 정보 저장
	public void kakaoinsert(HashMap<String, Object> userInfo);

    //전화번호와 이름으로 아이디 찾기
	public UserVO findbytelandname(UserVO vo);

	//---비번
	//아이디로 회원정보 찾기
	public UserVO findById(UserVO vo);
	//임시 비밀번호 발송
	public Integer updateTempPw(UserVO vo);

	
	// 관리자 회원정보 조회
	public List<UserVO> manageUserList(UserVO uservo);
	
	// 관리자 회원정보 상세 조회
	public UserVO manageUserDetail(String mId);
	
	// 선호테그 수정
	public void updatelikeTag(UserVO uservo);
}
