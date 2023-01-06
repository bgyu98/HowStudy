package com.example.demo.vo;


public class StudyRoomVO {
	private Integer sNum;
	private String mId;
	private String sTitle;
	private Integer sPeopleNum;
	private String sPw;
	private String sDate;
	private String sCategory;
	private String sComment;
	
	// Setter and Getter
	public Integer getsNum() {
		return sNum;
	}
	public void setsNum(Integer sNum) {
		this.sNum = sNum;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getsTitle() {
		return sTitle;
	}
	public void setsTitle(String sTitle) {
		this.sTitle = sTitle;
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
	public String getsDate() {
		return sDate;
	}
	public void setsDate(String sDate) {
		this.sDate = sDate;
	}
	public String getsCategory() {
		return sCategory;
	}
	public void setsCategory(String sCategory) {
		this.sCategory = sCategory;
	}
	
	public String getsComment() {
		return sComment;
	}
	public void setsComment(String sComment) {
		this.sComment = sComment;
	}
	
	@Override
	public String toString() {
		return "StudyRoomVO [sNum=" + sNum + ", mId=" + mId + ", sTitle=" + sTitle + ", sPeopleNum=" + sPeopleNum
				+ ", sPw=" + sPw + ", sDate=" + sDate + ", sCategory=" + sCategory + ", sComment=" + sComment + "]";
	}
	
	
	

	
}
