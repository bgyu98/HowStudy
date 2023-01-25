package com.example.demo.vo;


public class UserVO {
	private String mId;    //아이디 
	private String mPw;    //비밀번호
	private String mName;  //이름
	private String mPhone; //전화번호
	private String mEmail; //이메일
	private String mTag;   //선호태그
	private String mDelete; // 탈퇴 여부 : 기본값 Default => 탈퇴 시 1로 변경
	private String mGrade;  //회원등급
	private String mDate; 	//가입날짜
	
	// 페이징
	private int page;
	private int perPageNum;
	
	
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
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
	public String getmPhone() {
		return mPhone;
	}
	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getmTag() {
		return mTag;
	}
	public void setmTag(String mTag) {
		this.mTag = mTag;
	}
	public String getmDelete() {
		return mDelete;
	}
	public void setmDelete(String mDelete) {
		this.mDelete = mDelete;
	}
	public String getmGrade() {
		return mGrade;
	}
	public void setmGrade(String mGrade) {
		this.mGrade = mGrade;
	}
	public String getmDate() {
		return mDate;
	}
	public void setmDate(String mDate) {
		this.mDate = mDate;
	}
	
	
	// 페이징
		public UserVO() {
			this.page = 1;
			this.perPageNum = 10;
		}
		
		public void setPage(int page) {
			if (page <= 0) {
				this.page = 1;
				return;
			}
			this.page = page;
		}
		
		public void setPerPageNum(int perPageNum) {
			if (perPageNum <= 0 || perPageNum > 100) {
				this.perPageNum = 6;
				return;
			}
			this.perPageNum = perPageNum;
		}
		
		public int getPage() {
			return page;
		}
		
		public int getPageStart() {
			return (this.page - 1) * perPageNum;
		}
		
		public int getPerPageNum() {
			return this.perPageNum;
		}
	@Override
	public String toString() {
		return "UserVO [mId=" + mId + ", mPw=" + mPw + ", mName=" + mName + ", mPhone=" + mPhone + ", mEmail=" + mEmail
				+ ", mTag=" + mTag + ", mDelete=" + mDelete + ", mGrade=" + mGrade + ", mDate=" + mDate + "]";
	}
	
	


	
	
	
	
}


