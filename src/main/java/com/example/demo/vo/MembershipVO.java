package com.example.demo.vo;

import java.util.Date;

public class MembershipVO {
	
	private Integer ticket; 	//티켓시퀀스
	private String tClass;		//이용권종류
	private String mId;			//아이디
	private Date tStart;		//시작일
	private Date tEnd;			//종료일
	private String payWith;		//결제방법
	private Integer pAmount;	//결제금액
	private String mEmail;      //이메일
	
	
	
	//getter setter
	public Integer getTicket() {
		return ticket;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public void setTicket(Integer ticket) {
		this.ticket = ticket;
	}
	public String gettClass() {
		return tClass;
	}
	public void settClass(String tClass) {
		this.tClass = tClass;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public Date gettStart() {
		return tStart;
	}
	public void settStart(Date tStart) {
		this.tStart = tStart;
	}
	public Date gettEnd() {
		return tEnd;
	}
	public void settEnd(Date tEnd) {
		this.tEnd = tEnd;
	}
	public String getPayWith() {
		return payWith;
	}
	public void setPayWith(String payWith) {
		this.payWith = payWith;
	}
	public Integer getpAmount() {
		return pAmount;
	}
	public void setpAmount(Integer pAmount) {
		this.pAmount = pAmount;
	}
	
	
	@Override
	public String toString() {
		return "MembershipVO [ticket=" + ticket + ", tClass=" + tClass + ", mId=" + mId + ", tStart=" + tStart
				+ ", tEnd=" + tEnd + ", payWith=" + payWith + ", pAmount=" + pAmount + ", mEmail=" + mEmail + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
}
