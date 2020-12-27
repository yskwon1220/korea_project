package com.korea.health.admin.model.reservation;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.format.annotation.DateTimeFormat;

@Alias("reservationVO")
public class ReservationVO {
	Integer re_no;
	String lo_no;
	String lo_name;
	String type;
	String tr_name;
	/* @DateTimeFormat(pattern = "yyyy_M_d") */
	Date resdate;
	String restime;
	String user_id;
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	String user_name;
	String user_pw;
	String user_tel;
	String content;
	
	String resdateStr;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
	
	public Integer getRe_no() {
		return re_no;
	}
	public void setRe_no(Integer re_no) {
		this.re_no = re_no;
	}
	public String getLo_no() {
		return lo_no;
	}
	public void setLo_no(String lo_no) {
		this.lo_no = lo_no;
	}
	public String getLo_name() {
		return lo_name;
	}
	public void setLo_name(String lo_name) {
		this.lo_name = lo_name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTr_name() {
		return tr_name;
	}
	public void setTr_name(String tr_name) {
		this.tr_name = tr_name;
	}
	
	public Date getResdate() {
		return resdate;
	}
	public void setResdate(Date resdate) {
		resdateStr = sdf.format(resdate);
		this.resdate = resdate;
	}
	
	
//	public java.util.Date getResdate() {
//		return resdate;
//	}
//
//	public void setResdate(java.util.Date resdate) {
//		this.resdate = resdate;
//	}
	
//	public String getResdate() {
//		return resdate;
//	}
//	public void setResdate(String resdate) {
//		this.resdate = resdate;
//	}
	
	
	public String getRestime() {
		return restime;
	}
	public void setRestime(String restime) {
		this.restime = restime;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getContent() {
		return content;
	}
	public String getContentTrans() {
		return getContent().replaceAll("\n", "<br>");
	}
	public void setContent(String content) {
		if(content == null)
			content = "";
		this.content = content;
	}
	public String getWelcomeDate() {
		return resdateStr;
	}
	public void setWelcomeDate(String welcomeDate) {
		this.resdateStr = welcomeDate;
	}
	
	
}
