package com.example.demo.vo;


public class FaqVO {

	private Integer fNUM;
	private String fTITLE;
	private String fWRITER;
	private Integer fCNT;
	private String fCOMMENT;
	private String fDATE;
	
	
	public Integer getfNUM() {
		return fNUM;
	}
	public void setfNUM(Integer fNUM) {
		this.fNUM = fNUM;
	}
	public String getfTITLE() {
		return fTITLE;
	}
	public void setfTITLE(String fTITLE) {
		this.fTITLE = fTITLE;
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
	public String getfDATE() {
		return fDATE;
	}
	public void setfDATE(String fDATE) {
		this.fDATE = fDATE;
	}
	
	@Override
	public String toString() {
		return "FaqVO [fNUM=" + fNUM + ", fTITLE=" + fTITLE + ", fWRITER=" + fWRITER + ", fCNT=" + fCNT + ", fCOMMENT="
				+ fCOMMENT + ", fDATE=" + fDATE + "]";
	}
	
	

	
}
