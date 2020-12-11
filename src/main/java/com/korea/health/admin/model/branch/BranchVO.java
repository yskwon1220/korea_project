package com.korea.health.admin.model.branch;

import org.apache.ibatis.type.Alias;

@Alias("branchVO")
public class BranchVO {
	String no;
	String lo_tel;
	String lo_addr;
	String lo_name;
	String tr_name;
	String content;
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getLo_tel() {
		return lo_tel;
	}
	public void setLo_tel(String lo_tel) {
		this.lo_tel = lo_tel;
	}
	public String getLo_addr() {
		return lo_addr;
	}
	public void setLo_addr(String lo_addr) {
		this.lo_addr = lo_addr;
	}
	public String getLo_name() {
		return lo_name;
	}
	public void setLo_name(String lo_name) {
		this.lo_name = lo_name;
	}
	public String getTr_name() {
		return tr_name;
	}
	public void setTr_name(String tr_name) {
		this.tr_name = tr_name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
