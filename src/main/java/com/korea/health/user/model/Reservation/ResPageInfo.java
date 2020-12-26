package com.korea.health.user.model.Reservation;

import java.util.List;

public class ResPageInfo {

	public int nowPage = 1;
	public int pageLimit = 10;
	public 	int pageNumLimit = 4;
	public 	int lastPage;
	public 	int start;
	public 	int end;
	public 	int startPage;
	public 	int endPage;
	public String identify = "";
	List<ReservationVO> voArr;

	public String getIdentify() {
		return identify;
	}

	public void setIdentify(String identify) {
		this.identify = identify;
	}

	public List<ReservationVO> getVoArr() {
		return voArr;
	}

	public void setVoArr(List<ReservationVO> voArr) {
		this.voArr = voArr;
	}
	
	public void init(int total) {
		lastPage = (int)Math.ceil(total/pageLimit)+1;
		start = (nowPage-1)*pageLimit+1;
		end = nowPage*pageLimit;
		
		startPage = (nowPage-1)/pageNumLimit*pageNumLimit+1;
		endPage = startPage+pageNumLimit-1;
		
		
		if(endPage>lastPage)
			endPage=lastPage;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getPageLimit() {
		return pageLimit;
	}

	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}

	public int getPageNumLimit() {
		return pageNumLimit;
	}

	public void setPageNumLimit(int pageNumLimit) {
		this.pageNumLimit = pageNumLimit;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	@Override
	public String toString() {
		return "ResPageInfo [nowPage=" + nowPage + ", pageLimit=" + pageLimit + ", pageNumLimit=" + pageNumLimit
				+ ", lastPage=" + lastPage + ", start=" + start + ", end=" + end + ", startPage=" + startPage
				+ ", endPage=" + endPage + ", identify=" + identify + ", voArr=" + voArr + "]";
	}
	
}
