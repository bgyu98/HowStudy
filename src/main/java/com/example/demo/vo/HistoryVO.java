package com.example.demo.vo;

import java.util.List;

public class HistoryVO {
	
	private Integer hSeq;			// 공부기록 시퀀스	
	private String  mId;			// 유저아이디
	private String	todayTime;		// 오늘 공부시간
	private String	dayAvgTime;		// 일 평균 공부시간
	private String	tagTime;		// 태그별 공부시간
	private String	todos;			// 투두리스트
	private String	todoTime;		// 투두시간
	private String	completion;		// 투두완료
	private String  gTopic;			// 글주제
	private String	gTitle;			// 글제목
	private String  gComment;		// 글내용
	private String  gDate;			// 글작성 날짜
	private String  hSeqs;
	
	

	// setter and getter
	public Integer gethSeq() {
		return hSeq;
	}
	public void sethSeq(Integer hSeq) {
		this.hSeq = hSeq;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getTodayTime() {
		return todayTime;
	}
	public void setTodayTime(String todayTime) {
		this.todayTime = todayTime;
	}
	public String getDayAvgTime() {
		return dayAvgTime;
	}
	public void setDayAvgTime(String dayAvgTime) {
		this.dayAvgTime = dayAvgTime;
	}
	public String getTagTime() {
		return tagTime;
	}
	public void setTagTime(String tagTime) {
		this.tagTime = tagTime;
	}
	public String getTodos() {
		return todos;
	}
	public void setTodos(String todos) {
		this.todos = todos;
	}
	public String getTodoTime() {
		return todoTime;
	}
	public void setTodoTime(String todoTime) {
		this.todoTime = todoTime;
	}
	public String getCompletion() {
		return completion;
	}
	public void setCompletion(String completion) {
		this.completion = completion;
	}
	public String getgTopic() {
		return gTopic;
	}
	public void setgTopic(String gTopic) {
		this.gTopic = gTopic;
	}
	public String getgTitle() {
		return gTitle;
	}
	public void setgTitle(String gTitle) {
		this.gTitle = gTitle;
	}
	public String getgComment() {
		return gComment;
	}
	public void setgComment(String gComment) {
		this.gComment = gComment;
	}
	public String getgDate() {
		return gDate;
	}
	public void setgDate(String gDate) {
		this.gDate = gDate;
	}
	public String gethSeqs() {
		return hSeqs;
	}
	public void sethSeqs(String hSeqs) {
		this.hSeqs = hSeqs;
	}
	@Override
	public String toString() {
		return "HistoryVO [hSeq=" + hSeq + ", mId=" + mId + ", todayTime=" + todayTime + ", dayAvgTime=" + dayAvgTime
				+ ", tagTime=" + tagTime + ", todos=" + todos + ", todoTime=" + todoTime + ", completion=" + completion
				+ ", gTopic=" + gTopic + ", gTitle=" + gTitle + ", gComment=" + gComment + ", gDate=" + gDate
				+ ", hSeqs=" + hSeqs + "]";
	}

	



	


}
