package com.korea.health.user.model.Reservation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class ResTimeVO {
	String lo_no;
	String restime;
	
	//@DateTimeFormat(pattern = "yyyy_M_d")
	private Date resdate;
	Integer nowCnt;
	
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy_M_d");
	
	
	public void setResdate(String resdate) {
		try {
			this.resdate = sdf.parse(resdate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
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
	public Integer getNowCnt() {
		return nowCnt;
	}
	public void setNowCnt(Integer nowCnt) {
		this.nowCnt = nowCnt;
	}
	public Date getResdate() {
		return resdate;
	}
	public void setResdate(Date resdate) {
		this.resdate = resdate;
	}
	
	public String getResdateStr() {
		return sdf.format(resdate);
	}
	public void setResdateStr(String resdateStr) {
		try {
			this.resdate = sdf.parse(resdateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	@Override
	public String toString() {
		return "ResTestVO [lo_no=" + lo_no + ", restime=" + restime + ", resdate=" + resdate + ", nowCnt=" + nowCnt
				+ "]";
	}
	
	
	public String ajaxEle() {
		return "{\"lo_no\":"+ lo_no + ",\"restime\":"+ Integer.parseInt(restime) + ",\"resdate\":\""+getResdateStr()+"\",\"nowCnt\": "+ nowCnt + " }";
	}
	
	
}
