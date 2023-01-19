package com.example.demo.vo;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PagingVO {

	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int displayPageNum = 2;
	private ReportVO rvo;
	private UserVO uvo;
	
	
	public void setCriRVO(ReportVO rvo) {
		this.rvo = rvo;
	}
	
	public void setCriUVO(UserVO uvo) {
		this.uvo = uvo;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	
	public void setTotalCountUVO(int totalCount) {
		this.totalCount = totalCount;
		calcDataUVO();
	}
	
	
	public int getTotalCount() {
		return totalCount;
	}
	
	public int getStartPage() {
		return startPage;
	}
	
	public int getEndPage() {
		return endPage;
	}
	
	public boolean isPrev() {
		return prev;
	}
	
	public boolean isNext() {
		return next;
	}
	
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	
	public ReportVO setCriRVO() {
		return rvo;
	}
	
	public UserVO setCriUVO() {
		return uvo;
	}
	 
	private void calcData() {
		endPage = (int) (Math.ceil(rvo.getPage() / (double)displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;
	  
		int tempEndPage = (int) (Math.ceil(totalCount / (double)rvo.getPerPageNum()));
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		prev = startPage == 1 ? false : true;
		next = endPage * rvo.getPerPageNum() >= totalCount ? false : true;
	}
	
	public String makeQuery(int page) {
		UriComponents uriComponents =
		UriComponentsBuilder.newInstance()
						    .queryParam("page", page)
							.queryParam("perPageNum", rvo.getPerPageNum())
							.build();
		   
		return uriComponents.toUriString();
	}
	
	private void calcDataUVO() {
		endPage = (int) (Math.ceil(uvo.getPage() / (double)displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;
	  
		int tempEndPage = (int) (Math.ceil(totalCount / (double)uvo.getPerPageNum()));
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		prev = startPage == 1 ? false : true;
		next = endPage * uvo.getPerPageNum() >= totalCount ? false : true;
	}
	
	public String makeQueryUVO(int page) {
		UriComponents uriComponents =
		UriComponentsBuilder.newInstance()
						    .queryParam("page", page)
							.queryParam("perPageNum", uvo.getPerPageNum())
							.build();
		   
		return uriComponents.toUriString();
	}
}
