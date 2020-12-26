package com.korea.health.user.model.Reservation;

import java.text.SimpleDateFormat;

//import java.text.ParseException;
//import java.text.SimpleDateFormat;

import org.apache.ibatis.type.Alias;
import org.springframework.format.annotation.DateTimeFormat;

@Alias("reservationVO")
public class ReservationVO {

	
	Integer re_no;
	
	 String lo_no, lo_name, type, tr_name, resTime, user_id, user_name, user_pw, user_tel, content;
	@DateTimeFormat(pattern = "yyyy_M_d")
	 java.util.Date resdate;
	//
	
	//SimpleDateFormat sdf = new SimpleDateFormat("yyyy_M_d");
	

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

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

	public String getresTime() {
		return resTime;
	}

	public void setresTime(String resTime) {
		this.resTime = resTime;
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

	public void setContent(String content) {
		this.content = content;
	}

	public java.util.Date getResdate() {
		return resdate;
	}

	public void setResdate(java.util.Date resdate) {
		this.resdate = resdate;
	}


	
	
	/*
	 * public String getResdateStr() { return sdf.format(resdate); } public void
	 * setResdateStr(String resdateStr) { try { this.resdate =
	 * sdf.parse(resdateStr); } catch (ParseException e) { // TODO Auto-generated
	 * catch block e.printStackTrace(); } }
	 */
	/*
	public String getContent() {
		if(content == null)
			content = "";

		return content;
	}
	
	public String getContentBr() {
		return getContent().replaceAll("\n", "<br>");
	}

	public void setContent(String content) {
		if(content == null)
			content = "";
		this.content = content;
	}
*/
	
}
