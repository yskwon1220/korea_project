package com.korea.health.user.model.Trai;

import org.apache.ibatis.type.Alias;

@Alias("traiVO")
public class TraiVO {
	
	String tr_no, lo_no, tr_name, star, tr_pic, content;

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

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}

	public String getTr_pic() {
		return tr_pic;
	}

	public void setTr_pic(String tr_pic) {
		this.tr_pic = tr_pic;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	

}