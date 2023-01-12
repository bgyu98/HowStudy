package com.example.demo.vo;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;




public class StudyRoomVO {
	private Integer sNum;  
	private String mId;
	private String sTitle;
	private Integer sPeopleNum;
	private String sPw;
	private String sDate;
	private String sCategory;
	private String sComment;
	private String sFile;
	private Integer sFavorNum;
	private Integer check;
	private Integer check2;



	
	public Integer getCheck2() {
		return check2;
	}

	public void setCheck2(Integer check2) {
		this.check2 = check2;
	}

	@Override
	public String toString() {
		return "StudyRoomVO [sNum=" + sNum + ", mId=" + mId + ", sTitle=" + sTitle + ", sPeopleNum=" + sPeopleNum
				+ ", sPw=" + sPw + ", sDate=" + sDate + ", sCategory=" + sCategory + ", sComment=" + sComment
				+ ", sFile=" + sFile + ", sFavorNum=" + sFavorNum + ", check=" + check + ", check2=" + check2
				+ ", file=" + file + "]";
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

	
	MultipartFile file;
	
	public void setFile(MultipartFile file) {
		this.file = file;
		// 업로드 파일이 있을 경우
				if (!file.isEmpty()) {
					System.out.println("이미지 확인");
					UUID uuid = UUID.randomUUID();

					this.sFile = uuid.toString() ;

					File f = new File("D:\\howStudy\\howStudy\\src\\main\\resources\\static\\assets\\images\\studyRoom\\" + sFile + ".png");

					try {
						file.transferTo(f); 
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}

				}
	}



	
	
}
