package com.korea.health.admin.model.event;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("eventAdminVO")
public class EventAdminVO {
	Integer event_cnt;
	String event_no;
	String title;
	String main_img;
	String detail_img1;
	String detail_img2;
	String detail_img3;
	Date d_day;
	Integer e_price;
	Integer discount;
	
	String welcomeDate;
	String showE_price;
	String showDiscount;
	MultipartFile mainMF_img;
	MultipartFile detailMF_img1;
	MultipartFile detailMF_img2;
	MultipartFile detailMF_img3;
	
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
	public Integer getE_price() {
		return e_price;
	}
	public void setE_price(Integer e_price) {
		showE_price = fmt.format(e_price) + "원";
		this.e_price = e_price;
	}
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		showDiscount = fmt.format(discount) + "원";
		this.discount = discount;
	}
	public String getWelcomeDate() {
		return welcomeDate;
	}
	public void setWelcomeDate(String welcomeDate) {
		try {
			d_day = sdf.parse(welcomeDate);
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
	public Date getD_day() {
		return d_day;
	}
	public void setD_day(Date d_day) {
	    welcomeDate = sdf.format(d_day);
		this.d_day = d_day;
	}
	public MultipartFile getMainMF_img() {
		return mainMF_img;
	}
	public void setMainMF_img(MultipartFile mainMF_img) {
	    main_img = mainMF_img.getOriginalFilename();
		this.mainMF_img = mainMF_img;
	}
	public MultipartFile getDetailMF_img1() {
		return detailMF_img1;
	}
	public void setDetailMF_img1(MultipartFile detailMF_img1) {
	    detail_img1 = detailMF_img1.getOriginalFilename();
		this.detailMF_img1 = detailMF_img1;
	}
	public MultipartFile getDetailMF_img2() {
		return detailMF_img2;
	}
	public void setDetailMF_img2(MultipartFile detailMF_img2) {
	    detail_img2 = detailMF_img2.getOriginalFilename();
		this.detailMF_img2 = detailMF_img2;
	}
	public MultipartFile getDetailMF_img3() {
		return detailMF_img3;
	}
	public void setDetailMF_img3(MultipartFile detailMF_img3) {
	    detail_img3 = detailMF_img3.getOriginalFilename();
		this.detailMF_img3 = detailMF_img3;
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
	public Integer getEvent_cnt() {
		return event_cnt;
	}
	public void setEvent_cnt(Integer event_cnt) {
		this.event_cnt = event_cnt;
	}
	
}
