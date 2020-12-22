package com.korea.health.admin.model.event;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("eventAdminVO")
public class EventAdminVO {
	String event_no;
	String title;
	String mainEvent_img;
	String detailEvent_img1;
	String detailEvent_img2;
	String detailEvent_img3;
	Date openDate;
	Integer e_price;
	Integer discount;
	
	String welcomeDate;
	String showE_price;
	String showDiscount;
	MultipartFile main_img;
	MultipartFile detail_img1;
	MultipartFile detail_img2;
	MultipartFile detail_img3;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
	DecimalFormat fmt = new DecimalFormat("###,###");
	
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
	public String getMainEvent_img() {
		return mainEvent_img;
	}
	public void setMainEvent_img(String mainEvent_img) {
		this.mainEvent_img = mainEvent_img;
	}
	public String getDetailEvent_img1() {
		return detailEvent_img1;
	}
	public void setDetailEvent_img1(String detailEvent_img1) {
		this.detailEvent_img1 = detailEvent_img1;
	}
	public String getDetailEvent_img2() {
		return detailEvent_img2;
	}
	public void setDetailEvent_img2(String detailEvent_img2) {
		this.detailEvent_img2 = detailEvent_img2;
	}
	public String getDetailEvent_img3() {
		return detailEvent_img3;
	}
	public void setDetailEvent_img3(String detailEvent_img3) {
		this.detailEvent_img3 = detailEvent_img3;
	}
	public Date getOpenDate() {
		return openDate;
	}
	public void setOpenDate(Date openDate) {
		welcomeDate = sdf.format(openDate);
		this.openDate = openDate;
	}
	public Integer getE_price() {
		return e_price;
	}
	public void setE_price(Integer e_price) {
		showE_price = fmt.format(e_price);
		this.e_price = e_price;
	}
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		showDiscount = fmt.format(discount);
		this.discount = discount;
	}
	public String getWelcomeDate() {
		return welcomeDate;
	}
	public void setWelcomeDate(String welcomeDate) {
		try {
			openDate = sdf.parse(welcomeDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		this.welcomeDate = welcomeDate;
	}
	public String getShowE_price() {
		return showE_price;
	}
	public void setShowE_price(String showE_price) {
		this.showE_price = showE_price;
	}
	public String getShowDiscount() {
		return showDiscount;
	}
	public void setShowDiscount(String showDiscount) {
		this.showDiscount = showDiscount;
	}
	public MultipartFile getMain_img() {
		return main_img;
	}
	public void setMain_img(MultipartFile main_img) {
		mainEvent_img = main_img.getOriginalFilename();
		this.main_img = main_img;
	}
	public MultipartFile getDetail_img1() {
		return detail_img1;
	}
	public void setDetail_img1(MultipartFile detail_img1) {
		detailEvent_img1 = detail_img1.getOriginalFilename();
		this.detail_img1 = detail_img1;
	}
	public MultipartFile getDetail_img2() {
		return detail_img2;
	}
	public void setDetail_img2(MultipartFile detail_img2) {
		detailEvent_img2 = detail_img2.getOriginalFilename();
		this.detail_img2 = detail_img2;
	}
	public MultipartFile getDetail_img3() {
		return detail_img3;
	}
	public void setDetail_img3(MultipartFile detail_img3) {
		detailEvent_img3 = detail_img3.getOriginalFilename();
		this.detail_img3 = detail_img3;
	}
	
	
	
}
