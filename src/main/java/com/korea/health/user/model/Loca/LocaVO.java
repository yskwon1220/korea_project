package com.korea.health.user.model.Loca;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("locaVO")
public class LocaVO {

	String no, lo_name, lo_tel, lo_pic, lo_addr, restime;
	Date resdate;
	Integer cnt;
	

	public Integer getCnt() {
		return cnt;
	}

	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}


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

	public String getLo_tel() {
		return lo_tel;
	}

	public void setLo_tel(String lo_tel) {
		this.lo_tel = lo_tel;
	}

	public String getLo_pic() {
		return lo_pic;
	}

	public void setLo_pic(String lo_pic) {
		this.lo_pic = lo_pic;
	}

	public String getLo_addr() {
		return lo_addr;
	}

	public void setLo_addr(String lo_addr) {
		this.lo_addr = lo_addr;
	}

	public String getRestime() {
		return restime;
	}

	public void setRestime(String restime) {
		this.restime = restime;
	}

	public Date getResdate() {
		return resdate;
	}

	public void setResdate(Date resdate) {
		this.resdate = resdate;
	}

	@Override
	public String toString() {
		return "LocaVO [no=" + no + ", lo_name=" + lo_name + ", lo_tel=" + lo_tel + ", lo_pic=" + lo_pic + ", lo_addr="
				+ lo_addr + ", restime=" + restime + ", resdate=" + resdate + ", cnt=" + cnt + "]";
	}
	

}
