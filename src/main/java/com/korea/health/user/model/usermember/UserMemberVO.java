package com.korea.health.user.model.usermember;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("usermemberVO")
public class UserMemberVO {

	private Integer user_no, reserve_cnt, point;
	private String  user_id, user_pw, user_name, user_birth, user_email, user_tel, gender , coupon, admin, lo_no;
	private Date  regDate;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
	String ymd;
	
	public Integer getUser_no() {
		return user_no;
	}
	public void setUser_no(Integer user_no) {
		this.user_no = user_no;
	}
	public Integer getReserve_cnt() {
		return reserve_cnt;
	}
	public void setReserve_cnt(Integer reserve_cnt) {
		this.reserve_cnt = reserve_cnt;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getCoupon() {
		return coupon;
	}
	public void setCoupon(String coupon) {
		this.coupon = coupon;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public Integer getPoint() {
		return point;
	}
	public void setPoint(Integer point) {
		this.point = point;
	}
	
	public String getLo_no() {
		return lo_no;
	}
	public void setLo_no(String lo_no) {
		this.lo_no = lo_no;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		ymd = sdf.format(regDate);
		this.regDate = regDate;
	}
	public String getYmd() {
		return ymd;
	}
	public void setYmd(String ymd) {
		try {
			regDate = sdf.parse(ymd);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.ymd = ymd;
	}
	
	@Override
	public String toString() {
		return "UserMemberVO [user_no=" + user_no + ", reserve_cnt=" + reserve_cnt + ", point=" + point + ", user_id="
				+ user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", user_birth=" + user_birth
				+ ", user_email=" + user_email + ", user_tel=" + user_tel + ", gender=" + gender + ", coupon=" + coupon
				+ ", admin=" + admin + ", lo_no=" + lo_no + ", regDate=" + regDate + ", ymd=" + ymd + "]";
	}
	
}

