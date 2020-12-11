package com.korea.health.user.model.fnq;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("oneboardVO")
public class OneboardVO {
	public int board_no;
	int no;
	int gid;
	int seq;
	int lev;
	String title="", context="", file_0="", rep="";
	Date regdate;
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getLev() {
		return lev;
	}
	public void setLev(int lev) {
		this.lev = lev;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		
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
		if(file_0 == null)
			this.file_0 = "";
		
	}
	public String getRep() {
		return rep;
	}
	public void setRep(String rep) {
		
		if(rep=="")
			rep="처리중";
			
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
