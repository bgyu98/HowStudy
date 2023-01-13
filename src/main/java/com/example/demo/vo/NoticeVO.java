package com.example.demo.vo;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class NoticeVO {

	private Integer nNUM;
	private String nTITLE;
	private String nSUBTITLE;
	private String nWRITER;
	private Integer nCNT;
	private String nCOMMENT;
	private String nDATE;
	private Integer nCount;
	
	
	public Integer getnCount() {
		return nCount;
	}

	public void setnCount(Integer nCount) {
		this.nCount = nCount;
	}

	public String getnSUBTITLE() {
		return nSUBTITLE;
	}

	public void setnSUBTITLE(String nSUBTITLE) {
		this.nSUBTITLE = nSUBTITLE;
	}

	public void setnNSIZE(long nNSIZE) {
		this.nNSIZE = nNSIZE;
	}

	public void setnMAINNSIZE(long nMAINNSIZE) {
		this.nMAINNSIZE = nMAINNSIZE;
	}

	private String nTAG1;
	private String nTAG2;
	private String nTAG3;

	// 업로드 배너
	private String nNAME;
	private String nREALNAME;
	private long nNSIZE;

	// 업로드 상세 이미지
	private String nMAINNAME;
	private String nMAINREALNAME;
	private long nMAINNSIZE;

	// 썸네일 파일
	MultipartFile nFILE;

	// 상세 이미지 파일
	MultipartFile nFILE1;
	
	
	public Integer getnNUM() {
		return nNUM;
	}

	public void setnNUM(Integer nNUM) {
		this.nNUM = nNUM;
	}

	public String getnTITLE() {
		return nTITLE;
	}

	public void setnTITLE(String nTITLE) {
		this.nTITLE = nTITLE;
	}

	public String getnWRITER() {
		return nWRITER;
	}

	public void setnWRITER(String nWRITER) {
		this.nWRITER = nWRITER;
	}

	public Integer getnCNT() {
		return nCNT;
	}

	public void setnCNT(Integer nCNT) {
		this.nCNT = nCNT;
	}

	public String getnCOMMENT() {
		return nCOMMENT;
	}

	public void setnCOMMENT(String nCOMMENT) {
		this.nCOMMENT = nCOMMENT;
	}

	
	public String getnDATE() {
		return nDATE;
	}

	public void setnDATE(String nDATE) {
		this.nDATE = nDATE;
	}

	public String getnNAME() {
		return nNAME;
	}

	public void setnNAME(String nNAME) {
		this.nNAME = nNAME;
	}

	public String getnREALNAME() {
		return nREALNAME;
	}

	public void setnREALNAME(String nREALNAME) {
		this.nREALNAME = nREALNAME;
	}

	public long getnNSIZE() {
		return nNSIZE;
	}

	public void setnNSIZE(Integer nNSIZE) {
		this.nNSIZE = nNSIZE;
	}

	public String getnMAINNAME() {
		return nMAINNAME;
	}

	public void setnMAINNAME(String nMAINNAME) {
		this.nMAINNAME = nMAINNAME;
	}

	public String getnMAINREALNAME() {
		return nMAINREALNAME;
	}

	public void setnMAINREALNAME(String nMAINREALNAME) {
		this.nMAINREALNAME = nMAINREALNAME;
	}

	public long getnMAINNSIZE() {
		return nMAINNSIZE;
	}

	public void setnMAINNSIZE(Integer nMAINNSIZE) {
		this.nMAINNSIZE = nMAINNSIZE;
	}

	public MultipartFile getnFILE() {
		return nFILE;
	}

	public void setnFILE(MultipartFile nFILE) {
		this.nFILE = nFILE;

		// 업로드 파일이 있을 경우
		if (!nFILE.isEmpty()) {

			this.nNAME = nFILE.getOriginalFilename();
			this.nNSIZE = nFILE.getSize();

			UUID uuid = UUID.randomUUID();

			this.nREALNAME = uuid.toString() + "_" + nNAME;

			File f = new File("D:\\howStudy\\howStudy\\src\\main\\resources\\static\\assets\\images\\noticeimage\\" + nREALNAME);

			try {
				nFILE.transferTo(f); 
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
	}

	public MultipartFile getnFILE1() {
		return nFILE1;
	}

	public void setnFILE1(MultipartFile nFILE1) {
		this.nFILE1 = nFILE1;

		if (!nFILE1.isEmpty()) {

			this.nMAINNAME = nFILE1.getOriginalFilename();
			this.nMAINNSIZE = nFILE1.getSize();

			UUID uuid = UUID.randomUUID();

			this.nMAINREALNAME = uuid.toString() + "_" + nMAINNAME;

			File fa = new File("D:\\howStudy\\howStudy\\src\\main\\resources\\static\\assets\\images\\noticeimage\\" + nMAINREALNAME);

			try {
				nFILE1.transferTo(fa); 
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

	}

	public String getnTAG1() {
		return nTAG1;
	}

	public void setnTAG1(String nTAG1) {
		this.nTAG1 = nTAG1;
	}

	public String getnTAG2() {
		return nTAG2;
	}

	public void setnTAG2(String nTAG2) {
		this.nTAG2 = nTAG2;
	}

	public String getnTAG3() {
		return nTAG3;
	}
	
	public void setnTAG3(String nTAG3) {
		this.nTAG3 = nTAG3;
	}

	@Override
	public String toString() {
		return "NoticeVO [nNUM=" + nNUM + ", nTITLE=" + nTITLE + ", nWRITER=" + nWRITER + ", nCNT=" + nCNT
				+ ", nCOMMENT=" + nCOMMENT + ", nDATE=" + nDATE + ", nTAG1="
				+ nTAG1 + ", nTAG2=" + nTAG2 + ", nTAG3=" + nTAG3 + ", nNAME=" + nNAME + ", nREALNAME=" + nREALNAME
				+ ", nNSIZE=" + nNSIZE + ", nMAINNAME=" + nMAINNAME + ", nMAINREALNAME=" + nMAINREALNAME
				+ ", nMAINNSIZE=" + nMAINNSIZE + ", nFILE=" + nFILE + ", nFILE1=" + nFILE1 + "]";
	}
	
	
}
