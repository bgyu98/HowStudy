package com.example.demo.vo;

import java.util.Date;

public class MyStudyVO {
	public Integer sNum;		// 방 번호
	public String sTitle;		// 방 제목
	public Integer sPeopleNum;	// 방 허가인원수 
	public String sPw;			// 방 비밀번호
	public Date sDate;			// 방 생성 날짜
	public String sCategory;	// 선호태그
	public String mId;			// 로그인한 아이디
	public Integer checkDate; // 선택 기간
	public Integer sFavorNum; // 즐겨찾기 개수
	public Integer check;	// 즐겨찾기 클릭 여부 확인용
	
	
	
	
	public Integer getCheck() {
		return check;
	}


	public void setCheck(Integer check) {
		this.check = check;
	}


	public Integer getsFavorNum() {
		return sFavorNum;
	}


	public void setsFavorNum(Integer sFavorNum) {
		this.sFavorNum = sFavorNum;
	}


	public Integer getCheckDate() {
		return checkDate;
	}


	public void setCheckDate(Integer checkDate) {
		this.checkDate = checkDate;
	}


	public Integer getsNum() {
		return sNum;
	}


	public void setsNum(Integer sNum) {
		this.sNum = sNum;
	}


	public String getsTitle() {
		return sTitle;
	}


	public void setsTitle(String sTitle) {
		this.sTitle = sTitle;
	}


	@Override
	public String toString() {
		return "MyStudyVO [sNum=" + sNum + ", sTitle=" + sTitle + ", sPeopleNum=" + sPeopleNum + ", sPw=" + sPw
				+ ", sDate=" + sDate + ", sCategory=" + sCategory + ", mId=" + mId + ", checkDate=" + checkDate
				+ ", sFavorNum=" + sFavorNum + ", check=" + check + "]";
	}


	public Integer getsPeopleNum() {
		return sPeopleNum;
	}


	public void setsPeopleNum(Integer sPeopleNum) {
		this.sPeopleNum = sPeopleNum;
	}


	public String getsPw() {
		return sPw;
	}


	public void setsPw(String sPw) {
		this.sPw = sPw;
	}


	public Date getsDate() {
		return sDate;
	}


	public void setsDate(Date sDate) {
		this.sDate = sDate;
	}


	public String getsCategory() {
		return sCategory;
	}


	public void setsCategory(String sCategory) {
		this.sCategory = sCategory;
	}


	public String getmId() {
		return mId;
	}


	public void setmId(String mId) {
		this.mId = mId;
	}


	
	
}
