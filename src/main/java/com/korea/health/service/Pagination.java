package com.korea.health.service;

public class Pagination {
	private int listSize = 5;	// 한 페이지 묶음당 몇개의 게시물을 나타낼 것인지
	private int rangeSize = 5; 	// 한 페이지 묶음당 몇 페이지를 나타낼 것인지(밑쪽 네비게이션 사이즈?)
	private int page;	// 현재 목록의 페이지번호
	private int range;	// 각 페이지 범위 시작 번호
	private int listCnt;	// 전체 게시물 개수
	private int pageCnt;	// 전체 페이지 범위의 개수
	private int startPage;	// 각페이지 범위 시작 번호
	private int startList;
	private int endPage;	// 각페이지 범위 끝 번호
	private boolean prev;	// 이전페이지 여부
	private boolean next;	// 다음페이지 여부
	public int getListSize() {
		return listSize;
	}
	public void setListSize(int listSize) {
		this.listSize = listSize;
	}
	public int getRangeSize() {
		return rangeSize;
	}
	public void setRangeSize(int rangeSize) {
		this.rangeSize = rangeSize;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRange() {
		return range;
	}
	public void setRange(int range) {
		this.range = range;
	}
	public int getListCnt() {
		return listCnt;
	}
	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}
	public int getPageCnt() {
		return pageCnt;
	}
	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getStartList() {
		return startList;
	}
	public void setStartList(int startList) {
		this.startList = startList;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
								// 현재 페이지 정보, 현재 페이지 범위 정보, 게시물의 총 개수
	public void pageInfo(int page, int range, int listCnt) {
		this.page = page;
		this.range = range;
		this.listCnt = listCnt;
		
		/*전체 페이지 수*/
		this.pageCnt = (int)Math.ceil(listCnt/listSize);	// 전체 게시물 개수에서 페이지당 게시물 개수를 나눔
		
		/*시작 페이지*/
		this.startPage = (range - 1) * rangeSize + 1;
		
		/*끝 페이지*/
		this.endPage = range * rangeSize;
		
		/*게시판 시작 번호*/
		this.startList = (page - 1) * listSize;
		
		/*이전 버튼 상태*/
		this.prev = range == 1 ? false : true;
		
		/*다음 버튼 상태*/
		this.next = endPage > pageCnt ? false : true;
		if(this.endPage > this.pageCnt) {
			this.endPage = this.pageCnt;
			this.next = false;
		}
	}
}
