package com.example.demo.vo;


public class OfflineVO {

	private String branchName; 	//지점명
	private String addr;		//지점주소
	private String callNum;		//전화번호
	private String lat;		//위도
	private String lng;	//경도
	
	
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getCallNum() {
		return callNum;
	}
	public void setCallNum(String callNum) {
		this.callNum = callNum;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	@Override
	public String toString() {
		return "OfflineVO [branchName=" + branchName + ", addr=" + addr + ", callNum=" + callNum + ", lat=" + lat
				+ ", lng=" + lng + "]";
	}
	
	

	
	


	
}
