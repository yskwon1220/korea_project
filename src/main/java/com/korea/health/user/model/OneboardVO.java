package com.korea.health.user.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("oneboardVO")
public class OneboardVO {
	public Integer board_no;
	Integer no;
	Integer gid;
	Integer seq;
	Integer lev;
	String title, context, file_0, rep;
	Date regdate;
	public Integer getBoard_no() {
		return board_no;
	}
	public void setBoard_no(Integer board_no) {
		this.board_no = board_no;
	}
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public Integer getLev() {
		return lev;
	}
	public void setLev(Integer lev) {
		this.lev = lev;
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
	public String getRep() {
		return rep;
	}
	public void setRep(String rep) {
		this.rep = rep;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "OneboardVO [board_no=" + board_no + ", no=" + no + ", gid=" + gid + ", seq=" + seq + ", lev=" + lev
				+ ", title=" + title + ", context=" + context + ", file_0=" + file_0 + ", rep=" + rep + ", regdate="
				+ regdate + "]";
	}
	
	
	
	
}
