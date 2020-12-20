package com.korea.health.admin.model.event;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("")
public class EventadminVO {
	String event_no, title, main_img, detail_img1,detail_img2,detail_img3,
	e_price,discount;

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

	public String getE_price() {
		return e_price;
	}

	public void setE_price(String e_price) {
		this.e_price = e_price;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	@Override
	public String toString() {
		return "EventVO [event_no=" + event_no + ", title=" + title + ", main_img=" + main_img + ", detail_img1="
				+ detail_img1 + ", detail_img2=" + detail_img2 + ", detail_img3=" + detail_img3 + ", e_price=" + e_price
				+ ", discount=" + discount + "]";
	}
	
}
