package com.korea.health.user.model.usermember;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;
@Alias("usermemberVO")
public class UserMemberVO {

	private Integer reserve_cnt , admin;
	private String  id, pw, name,  email, tel, gender ,birth, coupon, addr;
	private Date  regDate;
	
SimpleDateFormat sdf = new SimpleDateFormat("yyyy_M_d");	
	
/*
 * public Integer getUser_no() { return user_no; } public void
 * setUser_no(Integer user_no) { this.user_no = user_no; }
 */	public String getId() {
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
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getCoupon() {
		return coupon;
	}
	public void setCoupon(String coupon) {
		this.coupon = coupon;
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
	public Integer getAdmin() {
		return admin;
	}
	public void setAdmin(Integer admin) {
		this.admin = admin;
	}
	
	
public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	//	public void setBirth(Date birth) {
//		this.birth = birth;
//	}
//	
//	public Date getBirth() {
//		return birth;
//	}
//	public String getBirthStr() {
//		return sdf.format(birth);
//	}
//	public void setBirthStr(String birthStr) {
//		try {
//			this.birth = sdf.parse(birthStr);
//		}
//		catch( ParseException e) {
//			e.printStackTrace();
//		}
//	}



}
