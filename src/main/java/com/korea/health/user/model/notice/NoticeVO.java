package com.korea.health.user.model.notice;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("noticeVO")
public class NoticeVO {
	public Integer notice_no;
	Integer no;
	Integer cnt;
	String title, context, file_0;
	Date regdate;
	
	public Integer getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(Integer notice_no) {
		this.notice_no = notice_no;
	}
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		if(context == null)
			context = "";
		
		return context;
	}

	public void setContext (String context) {
		if(context == null)
			context = "";
		this.context = context;
	}
	
	public String getContextBr() {
		return getContext().replaceAll("\n", "<br>");
	}

	public String getFile_0() {
		return file_0;
	}
	public void setFile_0(String file_0) {
		this.file_0 = file_0;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "NoticeVO [notice_no=" + notice_no + ", no=" + no + ", cnt=" + cnt + ", title=" + title + ", context="
				+ context + ", file_0=" + file_0 + ", regdate=" + regdate + "]";
	}
	
	
	
}
