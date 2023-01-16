package com.example.demo.vo;
import java.util.Date;
public class RecordVO {
	// 공부 기록 vo
	private Integer saveNum; // 글 번호
	private String sTime;		// 시간
	private String mId;		// 아이디
	private Integer sNum;	// 방 번호
	private String sCATEGORY;	// 내용
	private String nowDay;		// 현재 날짜
	public String getNowDay() {
		return nowDay;
	}
	public void setNowDay(String nowDay) {
		this.nowDay = nowDay;
	}
	@Override
	public String toString() {
		return "RecordVO [saveNum=" + saveNum + ", sTime=" + sTime + ", mId=" + mId + ", sNum=" + sNum + ", sCATEGORY="
				+ sCATEGORY + ", nowDay=" + nowDay + "]";
	}
	public Integer getSaveNum() {
		return saveNum;
	}
	public void setSaveNum(Integer saveNum) {
		this.saveNum = saveNum;
	}
	public String getsTime() {
		return sTime;
	}
	public void setsTime(String sTime) {
		this.sTime = sTime;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public Integer getsNum() {
		return sNum;
	}
	public void setsNum(Integer sNum) {
		this.sNum = sNum;
	}
	public String getsCATEGORY() {
		return sCATEGORY;
	}
	public void setsCATEGORY(String sCATEGORY) {
		this.sCATEGORY = sCATEGORY;
	}
}
