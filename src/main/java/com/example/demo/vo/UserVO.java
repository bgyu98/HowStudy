package com.example.demo.vo;

import lombok.Data;

//@Data
public class UserVO {
	private String mId;    //아이디 
	private String mPw;    //비밀번호
	private String mName;  //이름
	private String mPhone; //전화번호
	private String mEmail; //이메일
	private String mtag;   //선호태그
	
	
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmPhone() {
		return mPhone;
	}
	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}
	public String getmPw() {
		return mPw;
	}
	public void setmPw(String mPw) {
		this.mPw = mPw;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	
	
	@Override
	public String toString() {
		return "userVO [mId=" + mId + ", mPhone=" + mPhone + ", mPw=" + mPw + ", mName=" + mName + ", mEmail=" + mEmail
				+ ", mtag=" + mtag + "]";
	}
	
	
	
}



