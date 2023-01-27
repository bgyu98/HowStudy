package com.example.demo.vo;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class StudyRoomVO {
	private Integer sNum;
	private String mId;
	private String sTitle;
	private Integer sCnt;
	private Integer sCount;
	private Integer sPeopleNum;
	private String date1;   // 첫 번째 날짜
	private String date2 ;  // 두 번째 날짜
	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getDate2() {
		return date2;
	}

	public void setDate2(String date2) {
		this.date2 = date2;
	}

	private String sPw;
	public Integer getsCount() {
		return sCount;
	}

	public void setsCount(Integer sCount) {
		this.sCount = sCount;
	}

	private String sDate;
	private String sCategory;
	private String sComment;
	private String sFile;
	private Integer sFavorNum;
	private Integer check;
	private Integer check2;
	private MultipartFile file;
	
	// 스터디룸 검색 타이틀
	private String items;

	// 스터디룸 클릭 태그
	private String keyword;

	
	

	public Integer getsCnt() {
		return sCnt;
	}

	public void setsCnt(Integer sCnt) {
		this.sCnt = sCnt;
	}

	public Integer getCheck2() {
		return check2;
	}

	public String getItems() {
		return items;
	}

	public void setItems(String items) {
		this.items = items;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public void setCheck2(Integer check2) {
		this.check2 = check2;
	}

	public Integer getCheck() {
		return check;
	}

	public void setCheck(Integer check) {
		this.check = check;
	}

	public Integer getsFavorNum() {
		return sFavorNum;
	}

	public void setsFavorNum(Integer sFavorNum) {
		this.sFavorNum = sFavorNum;
	}

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

	public String getsFile() {
		return sFile;
	}

	public void setsFile(String sFile) {
		this.sFile = sFile;
	}

	public MultipartFile getFile() {
		return file;
	}

	

	public void setFile(MultipartFile file) {
		this.file = file;
		// 업로드 파일이 있을 경우
		if (!file.isEmpty()) {
			System.out.println("이미지 확인");
			UUID uuid = UUID.randomUUID();

			this.sFile = uuid.toString();

			File f = new File("D:\\howStudy\\howStudy\\src\\main\\resources\\static\\assets\\images\\studyRoom\\"
					+ sFile + ".png");
			try {
				file.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
	}

	@Override
	public String toString() {
		return "StudyRoomVO [sNum=" + sNum + ", mId=" + mId + ", sTitle=" + sTitle + ", sCnt=" + sCnt + ", sCount="
				+ sCount + ", sPeopleNum=" + sPeopleNum + ", date1=" + date1 + ", date2=" + date2 + ", sPw=" + sPw
				+ ", sDate=" + sDate + ", sCategory=" + sCategory + ", sComment=" + sComment + ", sFile=" + sFile
				+ ", sFavorNum=" + sFavorNum + ", check=" + check + ", check2=" + check2 + ", file=" + file + ", items="
				+ items + ", keyword=" + keyword + "]";
	}

	

	
	
}
