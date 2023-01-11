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
