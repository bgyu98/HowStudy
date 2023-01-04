package com.example.demo.vo;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class NoticeVO {

	private String nTITLE;
	private String nWRITER;
	private Integer nCNT;
	private String nCOMMENT;
	private String nFILE;
	private String nPW;
	private String nDATE;
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

	// 배너 파일
	MultipartFile file;

	// 상세 이미지 파일
	MultipartFile file1;

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

	public String getnFILE() {
		return nFILE;
	}

	public void setnFILE(String nFILE) {
		this.nFILE = nFILE;
	}

	public String getnPW() {
		return nPW;
	}

	public void setnPW(String nPW) {
		this.nPW = nPW;
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

	public void setnNSIZE(long nNSIZE) {
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

	public void setnMAINNSIZE(long nMAINNSIZE) {
		this.nMAINNSIZE = nMAINNSIZE;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;

		// 업로드 파일이 있을 경우
		if (!file.isEmpty()) {

			this.nNAME = file.getOriginalFilename();
			this.nNSIZE = file.getSize();

			UUID uuid = UUID.randomUUID();
			// 삽입 된 이미지를 이미지명으로 저장해놓았을 경우,
			// 이미지 삭제 시 중복 된 이미지명이 전부 삭제되므로 이미지명에 랜덤 값 붙임.
			this.nREALNAME = uuid.toString() + "_" + nNAME;

			// 파일 경로 지정하여 추가 된 파일의 이름을 b_realfname으로 지정
			File f = new File("D:\\howStudy\\howStudy\\src\\main\\resources\\static\\assets\\images\\" + nREALNAME);
			// 파일 저장 위치를 추후에 서버 경로를 얻어서 상대 경로로 수정하기
			try {
				file.transferTo(f); // 파일 데이터를 지정한 f에 저장
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
	}

	public MultipartFile getFile1() {
		return file1;
	}

	public void setFile1(MultipartFile file1) {
		this.file1 = file1;

		if (!file1.isEmpty()) {

			this.nMAINNAME = file1.getOriginalFilename();
			this.nMAINNSIZE = file1.getSize();

			UUID uuid = UUID.randomUUID();
			// 삽입 된 이미지를 이미지명으로 저장해놓았을 경우,
			// 이미지 삭제 시 중복 된 이미지명이 전부 삭제되므로 이미지명에 랜덤 값 붙임.
			this.nMAINREALNAME = uuid.toString() + "_" + nMAINNAME;

			// 파일 경로 지정하여 추가 된 파일의 이름을 b_realfname으로 지정
			File fa = new File("D:\\howStudy\\howStudy\\src\\main\\resources\\static\\assets\\images\\" + nREALNAME);
			// 파일 저장 위치를 추후에 서버 경로를 얻어서 상대 경로로 수정하기
			try {
				file1.transferTo(fa); // 파일 데이터를 지정한 f에 저장
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
		return "NoticeVO [nTITLE=" + nTITLE + ", nWRITER=" + nWRITER + ", nCNT=" + nCNT + ", nCOMMENT=" + nCOMMENT
				+ ", nFILE=" + nFILE + ", nPW=" + nPW + ", nDATE=" + nDATE + ", nNAME=" + nNAME + ", nREALNAME="
				+ nREALNAME + ", nNSIZE=" + nNSIZE + ", nMAINNAME=" + nMAINNAME + ", nMAINREALNAME=" + nMAINREALNAME
				+ ", nMAINNSIZE=" + nMAINNSIZE + ", file=" + file + ", file1=" + file1 + "]";
	}

}
