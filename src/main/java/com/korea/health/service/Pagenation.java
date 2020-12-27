package com.korea.health.service;

import java.text.DecimalFormat;
import java.util.List;

import com.korea.health.admin.model.branch.BranchVO;
import com.korea.health.admin.model.reservation.ResTimeVO;
import com.korea.health.admin.model.reservation.ReservationTimeVO;
import com.korea.health.admin.model.reservation.ReservationVO;
import com.korea.health.admin.model.result.ResultVO;
import com.korea.health.admin.model.trainer.TrainerVO;
import com.korea.health.user.model.usermember.UserMemberVO;

public class Pagenation {
	private Integer listSize = 5; // 한 페이지 묶음당 몇개의 게시물을 나타낼 것인지
	private Integer rangeSize = 5; // 한 페이지 묶음당 몇 페이지를 나타낼 것인지(밑쪽 네비게이션 사이즈?)
	private Integer page; // 현재 목록의 페이지번호
	private Integer range; // 각 페이지 범위 시작 번호
	private Integer listCnt; // 전체 게시물 개수
	private Integer pageCnt; // 전체 페이지 범위의 개수
	private Integer startPage; // 각페이지 범위 시작 번호
	private Integer startList; // DB에서 페이지 불러올때 시작 rownum
	private Integer endList; // DB에서 페이지 불러올때 끝 rownum
	private Integer endPage; // 각페이지 범위 끝 번호
	private boolean prev; // 이전페이지 여부
	private boolean next; // 다음페이지 여부
	private List<ReservationVO> reservSet; // 예약 넣기
	private String keyField;
	private String keyWord;
	private List<ResTimeVO> reservtimeSet;
	private List<ReservationTimeVO> reservtime2Set;
	private List<TrainerVO> pageSet;
	private String locationNo;
	private Integer user_no;
	private List<ResultVO> resultSet; // 정산넣기
	private String year;
	private String month;
	private String startDate;
	private String endDate;
	private String search;
	
	
	DecimalFormat fmt = new DecimalFormat("###,###");

	public List<UserMemberVO> getUserSet() {
		return userSet;
	}

	public void setUserSet(List<UserMemberVO> userSet) {
		this.userSet = userSet;
	}

	private List<UserMemberVO> userSet;

	public String getKeyField() {
		return keyField;
	}

	public void setKeyField(String keyField) {
		this.keyField = keyField;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public List<TrainerVO> getPageSet() {
		return pageSet;
	}

	public void setPageSet(List<TrainerVO> pageSet) {
		this.pageSet = pageSet;
	}

	public Integer getUser_no() {
		return user_no;
	}

	public void setUser_no(Integer user_no) {
		this.user_no = user_no;
	}

	public List<ResultVO> getResultSet() {
		return resultSet;
	}

	public void setResultSet(List<ResultVO> resultSet) {
		this.resultSet = resultSet;
	}
	
	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public Integer getTotalPayment() {
		return totalPayment;
	}

	public void setTotalPayment(Integer totalPayment) {
		showPayment = fmt.format(totalPayment) + "원";
		this.totalPayment = totalPayment;
	}

	public String getShowPayment() {
		return showPayment;
	}

	public void setShowPayment(String showPayment) {
		this.showPayment = showPayment;
	}

	private Integer totalPayment;
	private String showPayment;

	public Integer getListSize() {
		return listSize;
	}

	public void setListSize(Integer listSize) {
		this.listSize = listSize;
	}

	public Integer getRangeSize() {
		return rangeSize;
	}

	public void setRangeSize(Integer rangeSize) {
		this.rangeSize = rangeSize;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getRange() {
		return range;
	}

	public void setRange(Integer range) {
		this.range = range;
	}

	public Integer getListCnt() {
		return listCnt;
	}

	public void setListCnt(Integer listCnt) {
		this.listCnt = listCnt;
	}

	public Integer getPageCnt() {
		return pageCnt;
	}

	public void setPageCnt(Integer pageCnt) {
		this.pageCnt = pageCnt;
	}

	public Integer getStartPage() {
		return startPage;
	}

	public void setStartPage(Integer startPage) {
		this.startPage = startPage;
	}

	public Integer getStartList() {
		return startList;
	}

	public void setStartList(Integer startList) {
		this.startList = startList;
	}

	public Integer getEndList() {
		return endList;
	}

	public void setEndList(Integer endList) {
		this.endList = endList;
	}

	public Integer getEndPage() {
		return endPage;
	}

	public void setEndPage(Integer endPage) {
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

	public List<ResTimeVO> getReservtimeSet() {
		return reservtimeSet;
	}

	public void setReservtimeSet(List<ResTimeVO> reservtimeSet) {
		this.reservtimeSet = reservtimeSet;
	}

	public List<ReservationVO> getReservSet() {
		return reservSet;
	}

	public void setReservSet(List<ReservationVO> reservSet) {
		this.reservSet = reservSet;
	}

	public String getLocationNo() {
		return locationNo;
	}

	public void setLocationNo(String locationNo) {
		this.locationNo = locationNo;
	}
	
	public List<ReservationTimeVO> getReservtime2Set() {
		return reservtime2Set;
	}

	public void setReservtime2Set(List<ReservationTimeVO> reservtime2Set) {
		this.reservtime2Set = reservtime2Set;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	// 현재 페이지 정보, 현재 페이지 범위 정보, 게시물의 총 개수
	public void pageInfo(Integer page, Integer range, Integer listCnt) {
		this.page = page;
		this.range = range;
		this.listCnt = listCnt;

		/* 전체 페이지 수 */
		this.pageCnt = (int) Math.ceil((double) listCnt / listSize); // 전체 게시물 개수에서 페이지당 게시물 개수를 나눔

		/* 시작 페이지 */
		this.startPage = (range - 1) * rangeSize + 1;

		/* 끝 페이지 */
		this.endPage = range * rangeSize;

		/* 게시판 시작 번호 */
		this.startList = ((page - 1) * listSize) + 1;

		/* 게시판 끝 번호 */
		this.endList = startList + 4;

		/* 이전 버튼 상태 */
		this.prev = range == 1 ? false : true;

		/* 다음 버튼 상태 */
		this.next = pageCnt > endPage ? true : false;
		if (this.endPage > this.pageCnt) {
			this.endPage = this.pageCnt;
			this.next = false;
		}
	}

	@Override
	public String toString() {
		return "Pagenation [reservSet=" + reservSet + "]";
	}
	

}
