package com.example.demo.vo;

import java.util.Date;

public class MyStudyVO {
	public Integer sNum;
	public String sTitle;
	public Integer sPeopleNum;
	public String sPw;
	public Date sDate;
	public String sCategory;
	public String mId;
	public Integer checkDate;
	
	
	
	
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
				+ ", sDate=" + sDate + ", sCategory=" + sCategory + ", mId=" + mId + ", checkDate=" + checkDate + "]";
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
