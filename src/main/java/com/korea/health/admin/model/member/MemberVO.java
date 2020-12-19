package com.korea.health.admin.model.member;

import java.util.Date;

public class MemberVO {
	Integer customer_no;
	String id;
	String pw;
	String name;
	Date birth;
	String email;
	String tel;
	String gender;
	Integer admin;	// integer로 해서 0or1로 해야대지않나?
	String addr;
	Integer reserve_cnt;
	Date regdate;
	
	public Integer getCustomer_no() {
		return customer_no;
	}
	public void setCustomer_no(Integer customer_no) {
		this.customer_no = customer_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Integer getAdmin() {
		return admin;
	}
	public void setAdmin(Integer admin) {
		this.admin = admin;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Integer getReserve_cnt() {
		return reserve_cnt;
	}
	public void setReserve_cnt(Integer reserve_cnt) {
		this.reserve_cnt = reserve_cnt;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
}
