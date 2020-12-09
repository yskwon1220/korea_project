package com.korea.health.admin.model.trainer;

import org.apache.ibatis.type.Alias;

@Alias("trainerVO")
public class TrainerVO {
	String tr_no;
	String lo_no;
	String tr_name;
	Integer isManage;
	String tr_info;
	Integer stars;
	String tr_pic;
	
	public String getTr_no() {
		return tr_no;
	}
	public void setTr_no(String tr_no) {
		this.tr_no = tr_no;
	}
	public String getLo_no() {
		return lo_no;
	}
	public void setLo_no(String lo_no) {
		this.lo_no = lo_no;
	}
	public String getTr_name() {
		return tr_name;
	}
	public void setTr_name(String tr_name) {
		this.tr_name = tr_name;
	}
	public Integer getIsManage() {
		return isManage;
	}
	public void setIsManage(Integer isManage) {
		this.isManage = isManage;
	}
	public String getTr_info() {
		return tr_info;
	}
	public void setTr_info(String tr_info) {
		this.tr_info = tr_info;
	}
	public Integer getStars() {
		return stars;
	}
	public void setStars(Integer stars) {
		this.stars = stars;
	}
	public String getTr_pic() {
		return tr_pic;
	}
	public void setTr_pic(String tr_pic) {
		this.tr_pic = tr_pic;
	}
}
