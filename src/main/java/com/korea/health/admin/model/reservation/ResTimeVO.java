package com.korea.health.admin.model.reservation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class ResTimeVO {
	 String lo_no;
	 String resTime;
	
	//@DateTimeFormat(pattern = "yyyy_M_d")
	 Date resDate;
	 Integer nowCnt;
	
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy_M_d");
	
	public String getLo_no() {
		return lo_no;
	}
	public void setLo_no(String lo_no) {
		this.lo_no = lo_no;
	}
	public String getResTime() {
		return resTime;
	}
	public void setResTime(String resTime) {
		this.resTime = resTime;
	}
	public Integer getNowCnt() {
		return nowCnt;
	}
	public void setNowCnt(Integer nowCnt) {
		this.nowCnt = nowCnt;
	}
	public Date getResDate() {
		return resDate;
	}
	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}
	
	public String getResDateStr() {
		return sdf.format(resDate);
	}
	public void setResDateStr(String resDateStr) {
		try {
			this.resDate = sdf.parse(resDateStr);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Override
	public String toString() {
		return "ResTestVO [lo_no=" + lo_no + ", resTime=" + resTime + ", resDate=" + resDate + ", nowCnt=" + nowCnt
				+ "]";
	}
	
	
	public String ajaxEle() {
		return "{\"lo_no\":"+ lo_no + ",\"resTime\":"+ Integer.parseInt(resTime) + ",\"resDate\":\""+getResDateStr()+"\",\"nowCnt\": "+ nowCnt + " }";
	}
	
	
}
