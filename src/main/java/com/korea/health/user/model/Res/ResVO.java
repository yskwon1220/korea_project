package com.korea.health.user.model.Res;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("resVO")
public class ResVO {

	String no, lo_name, type, tr_name, user_name, user_pw, user_tel, content, restime;
	Date resdate;
	
	

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
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

	public Date getResdate() {
		return resdate;
	}

	public void setResdate(Date resdate) {
		this.resdate = resdate;
	}



	public String getRestime() {
		return restime;
	}

	public void setRestime(String restime) {
		this.restime = restime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

//	public String getContent() {
//		if(content == null)
//			content = "";
//
//		return content;
//	}
//	
//	public String getContentBr() {
//		return getContent().replaceAll("\n", "<br>");
//	}
//
//	public void setContent(String content) {
//		if(content == null)
//			content = "";
//		this.content = content;
//	}
//
//	
	
}
