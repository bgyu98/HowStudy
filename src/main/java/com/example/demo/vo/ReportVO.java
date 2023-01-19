package com.example.demo.vo;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class ReportVO {

	private Integer rNum;			//신고번호
	private String  mId;			//아이디
	private String  rTitle;			//제목
	private String  rOpponent;		//피의자
	private String  rClass;			//분류
	private Date  	rDate;			//신고날짜
	private String  rReason;		//이유
	private String	rFile;			//파일이름
	private List<MultipartFile> file;		//파일저장
	private String 	status; 		//상태

	
	//getter setter
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Integer getrNum() {
		return rNum;
	}
	public void setrNum(Integer rNum) {
		this.rNum = rNum;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getrTitle() {
		return rTitle;
	}
	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}
	public String getrOpponent() {
		return rOpponent;
	}
	public void setrOpponent(String rOpponent) {
		this.rOpponent = rOpponent;
	}
	public String getrClass() {
		return rClass;
	}
	public void setrClass(String rClass) {
		this.rClass = rClass;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	public String getrReason() {
		return rReason;
	}
	public void setrReason(String rReason) {
		this.rReason = rReason;
	}

	public String getrFile() {
		return rFile;
	}
	public void setrFile(String rFile) {
		this.rFile = rFile;
	}
	
	//다중 파일 업로드
	public void setFile(List<MultipartFile> files) {
		int i = 1;
		for(MultipartFile file : files) {
			if (!file.isEmpty()) {
				UUID uuid = UUID.randomUUID(); //랜덤 uuid
				
				this.rFile = uuid.toString();
				
				File f = new File("D:\\howStudy\\howStudy\\src\\main\\resources\\static\\assets\\images\\reportFile\\"
						+ rFile + "_" + mId + "의 신고사진" + i + ".png"); // f = 경로
				try {
					((MultipartFile) file).transferTo(f); // 서버로 전송
					i++;
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
	
			}
		}
	}
	public List<MultipartFile> getFile() {
		return file;
	}
	
	
	@Override
	public String toString() {
		return "ReportVO [rNum=" + rNum + ", mId=" + mId + ", rTitle=" + rTitle + ", rOpponent=" + rOpponent
				+ ", rClass=" + rClass + ", rDate=" + rDate + ", rReason=" + rReason + ", rFile=" + rFile + ", file="
				+ file + ", status=" + status + "]";
	}
	
	
	
	
	

	
}
