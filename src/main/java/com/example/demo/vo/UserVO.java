package com.example.demo.vo;


public class UserVO {
	private String mId;    //아이디 
	private String mPw;    //비밀번호
	private String mName;  //이름
	private String mPhone; //전화번호
	private String mEmail; //이메일
	private String mtag;   //선호태그
	private String mDelete; // 탈퇴 여부 : 기본값 Default => 탈퇴 시 1로 변경
	
	
	
	public String getmDelete() {
		return mDelete;
	}
	public void setmDelete(String mDelete) {
		this.mDelete = mDelete;
	}
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
		return "UserVO [mId=" + mId + ", mPw=" + mPw + ", mName=" + mName + ", mPhone=" + mPhone + ", mEmail=" + mEmail
				+ ", mtag=" + mtag + ", mDelete=" + mDelete + "]";
	}


	
	
}



