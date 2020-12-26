package com.korea.health.admin.model.reservation;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("reservationTimeVO")
public class ReservationTimeVO {
	String lo_no;
	String restime;
	Date resdate;
	Integer number;
	Integer	nowCnt;
	String welcomeDate;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy / MM / dd");
	
	public Integer getNowCnt() {
		return nowCnt;
	}
	public void setNowCnt(Integer nowCnt) {
		this.nowCnt = nowCnt;
	}
	
	public String getLo_no() {
		return lo_no;
	}
	public void setLo_no(String lo_no) {
		this.lo_no = lo_no;
	}
	public String getRestime() {
		return restime;
	}
	public void setRestime(String restime) {
		this.restime = restime;
	}
	public Date getResdate() {
		return resdate;
	}
	public void setResdate(Date resdate) {
		welcomeDate = sdf.format(resdate);
		this.resdate = resdate;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public String getWelcomeDate() {
		return welcomeDate;
	}
	public void setWelcomeDate(String welcomeDate) {
		this.welcomeDate = welcomeDate;
	}
	
	
}
