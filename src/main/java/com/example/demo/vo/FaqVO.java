package com.example.demo.vo;

public class FaqVO {
	
	private String fTITLE;
	private String fSUBTITLE;
	private String fWRITER;
	private Integer fCNT;
	private String fCOMMENT;
	private String fFILE;
	private String fPW;
	

	public String getfTITLE() {
		return fTITLE;
	}
	public void setfTITLE(String fTITLE) {
		this.fTITLE = fTITLE;
	}
	public String getfSUBTITLE() {
		return fSUBTITLE;
	}
	public void setfSUBTITLE(String fSUBTITLE) {
		this.fSUBTITLE = fSUBTITLE;
	}
	public String getfWRITER() {
		return fWRITER;
	}
	public void setfWRITER(String fWRITER) {
		this.fWRITER = fWRITER;
	}
	public Integer getfCNT() {
		return fCNT;
	}
	public void setfCNT(Integer fCNT) {
		this.fCNT = fCNT;
	}
	public String getfCOMMENT() {
		return fCOMMENT;
	}
	public void setfCOMMENT(String fCOMMENT) {
		this.fCOMMENT = fCOMMENT;
	}
	public String getfFILE() {
		return fFILE;
	}
	public void setfFILE(String fFILE) {
		this.fFILE = fFILE;
	}
	public String getfPW() {
		return fPW;
	}
	public void setfPW(String fPW) {
		this.fPW = fPW;
	}
	@Override
	public String toString() {
		return "FaqVO [fTITLE=" + fTITLE + ", fSUBTITLE=" + fSUBTITLE + ", fWRITER=" + fWRITER + ", fCNT=" + fCNT
				+ ", fCOMMENT=" + fCOMMENT + ", fFILE=" + fFILE + ", fPW=" + fPW + "]";
	}

	
	
}
