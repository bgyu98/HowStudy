package com.example.demo.vo;

import java.io.File;
import java.util.Date;

public class ReportVO {

	private Integer rNum;
	private String  mId;
	private String  rTitle;
	private String  rOpponent;
	private String  rClass;
	private Date    rDate;
	private String  rReason;
//	private File	rFile;
	
	//getter setter
	public Integer getrNum() {
		return rNum;
	}
	public void setrNum(Integer rNum) {
		this.rNum = rNum;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getrTitle() {
		return rTitle;
	}
	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}
	public String getrOpponent() {
		return rOpponent;
	}
	public void setrOpponent(String rOpponent) {
		this.rOpponent = rOpponent;
	}
	public String getrClass() {
		return rClass;
	}
	public void setrClass(String rClass) {
		this.rClass = rClass;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	public String getrReason() {
		return rReason;
	}
	public void setrReason(String rReason) {
		this.rReason = rReason;
	}
//	public File getrFile() {
//		return rFile;
//	}
//	public void setrFile(File rFile) {
//		this.rFile = rFile;
//	}
//	
	//toString
	@Override
	public String toString() {
		return "ReportVO [rNum=" + rNum + ", mId=" + mId + ", rTitle=" + rTitle + ", rOpponent=" + rOpponent
				+ ", rClass=" + rClass + ", rDate=" + rDate + ", rReason=" + rReason + "]";
	}
	
	
	
	
	
	
	

	
}
