package com.korea.health.user.model.Location;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("locationVO")
public class LocationVO {

	String lo_no, lo_tel, lo_addr, lo_name, lo_pic;
	
	Integer cnt;

	public String getLo_no() {
		return lo_no;
	}

	public void setLo_no(String lo_no) {
		this.lo_no = lo_no;
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

	public String getLo_pic() {
		return lo_pic;
	}

	public void setLo_pic(String lo_pic) {
		this.lo_pic = lo_pic;
	}

	public Integer getCnt() {
		return cnt;
	}

	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	
	

}
