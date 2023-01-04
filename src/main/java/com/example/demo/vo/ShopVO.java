package com.example.demo.vo;

public class ShopVO {
	
	private String tClass;
	private Integer tPrice;
	private String tContext;
	
//	getter setter
	public String gettClass() {
		return tClass;
	}
	public String gettContext() {
		return tContext;
	}
	public void settContext(String tContext) {
		this.tContext = tContext;
	}
	public void settClass(String tClass) {
		this.tClass = tClass;
	}
	public Integer gettPrice() {
		return tPrice;
	}
	public void settPrice(Integer tPrice) {
		this.tPrice = tPrice;
	}
	
	//to String
	@Override
	public String toString() {
		return "ShopVO [tClass=" + tClass + ", tPrice=" + tPrice + ", tContext=" + tContext + "]";
	}
	
	
	
	
}
