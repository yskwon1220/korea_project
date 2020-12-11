package com.korea.health.user.model.Loca;

import org.apache.ibatis.type.Alias;

@Alias("locaVO")
public class LocaVO {


String no,lo_name,lo_tel,lo_pic,lo_addr;

public String getNo() {
	return no;
}

public String getLo_addr() {
	return lo_addr;
}

public void setLo_addr(String lo_addr) {
	this.lo_addr = lo_addr;
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




		
}
