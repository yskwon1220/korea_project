package com.korea.health.user.model.qna;

import java.util.List;

import org.apache.ibatis.type.Alias;

@Alias("infoqnaVo")
public class QnaPageInfo {
	public int nowPage = 1;
	public int pageLimit = 2;
	public 	int pageNumLimit = 4;
	public 	int lastPage;
	public 	int start;
	public 	int end;
	public 	int startPage;
	public 	int endPage;
	List<QnaVO> voArr;
	
	
	
	

	public List<QnaVO> getVoArr() {
		return voArr;
	}

	public void setVoArr(List<QnaVO> voArr) {
		this.voArr = voArr;
	}

	public void init(int total) {
		lastPage = (int)Math.ceil(total/pageLimit) + 1;
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
		return "FnqPageInfo [nowPage=" + nowPage + ", pageLimit=" + pageLimit + ", pageNumLimit=" + pageNumLimit
				+ ", lastPage=" + lastPage + ", start=" + start + ", end=" + end + ", startPage=" + startPage
				+ ", endPage=" + endPage + ", voArr=" + voArr + "]";
	}
	
	
	

}
