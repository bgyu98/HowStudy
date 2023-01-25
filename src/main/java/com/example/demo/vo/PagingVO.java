package com.example.demo.vo;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PagingVO {

	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int displayPageNum = 5;
	private ReportVO rvo;
	private UserVO uvo;
	private NoticeVO nvo;
	private OfflineVO ovo;

	// report
	public void setCriRVO(ReportVO rvo) {
		this.rvo = rvo;
	}

	// user
	public void setCriUVO(UserVO uvo) {
		this.uvo = uvo;
	}

	// notice
	public void setCriNVO(NoticeVO nvo) {
		this.nvo = nvo;
	}

	// Offline
	public void setCriOVO(OfflineVO ovo) {
		this.ovo = ovo;
	}

	// report
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}

	// user
	public void setTotalCountUVO(int totalCount) {
		this.totalCount = totalCount;
		calcDataUVO();
	}

	// notice
	public void setTotalCountNVO(int totalCount) {
		this.totalCount = totalCount;
		calcDataNVO();
	}

	// Offline
	public void setTotalCountOVO(int totalCount) {
		this.totalCount = totalCount;
		calcDataOVO();
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

	public NoticeVO setCriNVO() {
		return nvo;
	}

	public OfflineVO setCriOVO() {
		return ovo;
	}

	// report
	private void calcData() {
		endPage = (int) (Math.ceil(rvo.getPage() / (double) displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;

		int tempEndPage = (int) (Math.ceil(totalCount / (double) rvo.getPerPageNum()));
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		prev = startPage == 1 ? false : true;
		next = endPage * rvo.getPerPageNum() >= totalCount ? false : true;
	}

	// report
	public String makeQuery(int page) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page)
				.queryParam("perPageNum", rvo.getPerPageNum()).build();

		return uriComponents.toUriString();
	}

	// user
	private void calcDataUVO() {
		endPage = (int) (Math.ceil(uvo.getPage() / (double) displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;

		int tempEndPage = (int) (Math.ceil(totalCount / (double) uvo.getPerPageNum()));
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		prev = startPage == 1 ? false : true;
		next = endPage * uvo.getPerPageNum() >= totalCount ? false : true;
	}

	// user
	public String makeQueryUVO(int page) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page)
				.queryParam("perPageNum", uvo.getPerPageNum()).build();

		return uriComponents.toUriString();
	}

	// notice
	private void calcDataNVO() {
		endPage = (int) (Math.ceil(nvo.getPage() / (double) displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;

		int tempEndPage = (int) (Math.ceil(totalCount / (double) nvo.getPerPageNum()));
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		prev = startPage == 1 ? false : true;
		next = endPage * nvo.getPerPageNum() >= totalCount ? false : true;
	}

	// notice
	public String makeQueryNVO(int page) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page)
				.queryParam("perPageNum", nvo.getPerPageNum()).build();

		return uriComponents.toUriString();
	}

	// Offline
	private void calcDataOVO() {
		endPage = (int) (Math.ceil(ovo.getPage() / (double) displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;

		int tempEndPage = (int) (Math.ceil(totalCount / (double) ovo.getPerPageNum()));
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		prev = startPage == 1 ? false : true;
		next = endPage * ovo.getPerPageNum() >= totalCount ? false : true;
	}

	// Offline
	public String makeQueryOVO(int page) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page)
				.queryParam("perPageNum", ovo.getPerPageNum()).build();

		return uriComponents.toUriString();
	}
}
