package com.korea.health.user.model.event;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("eventVO")
public class EventVO {

	String event_no,user_no, title, main_img,detail_img1,detail_img2,detail_img3;
	Date d_day;
	Integer e_price, discount;
	
	
	public Integer getE_price() {
		return e_price;
	}

	public void setE_price(Integer e_price) {
		this.e_price = e_price;
	}

	public Integer getDiscount() {
		return discount;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

	public String getUser_no() {
		return user_no;
	}

	public void setUser_no(String user_no) {
		this.user_no = user_no;
	}

	public String getDetail_img1() {
		return detail_img1;
	}

	public void setDetail_img1(String detail_img1) {
		this.detail_img1 = detail_img1;
	}

	public String getDetail_img2() {
		return detail_img2;
	}

	public void setDetail_img2(String detail_img2) {
		this.detail_img2 = detail_img2;
	}

	public String getDetail_img3() {
		return detail_img3;
	}

	public void setDetail_img3(String detail_img3) {
		this.detail_img3 = detail_img3;
	}

	public Date getD_day() {
		return d_day;
	}

	public void setD_day(Date d_day) {
		this.d_day = d_day;
	}

	public String getEvent_no() {
		return event_no;
	}

	public void setEvent_no(String event_no) {
		this.event_no = event_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMain_img() {
		return main_img;
	}

	public void setMain_img(String main_img) {
		this.main_img = main_img;
	}

	@Override
	public String toString() {
		return "EventVO [event_no=" + event_no + ", user_no=" + user_no + ", title=" + title + ", main_img=" + main_img
				+ ", detail_img1=" + detail_img1 + ", detail_img2=" + detail_img2 + ", detail_img3=" + detail_img3
				+ ", d_day=" + d_day + ", e_price=" + e_price + ", discount=" + discount + "]";
	}


	
	
	
}
