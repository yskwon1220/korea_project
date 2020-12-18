package com.korea.health.admin.model.result;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("resultVO")
public class ResultVO {
	String payment_no;
	Integer user_no;
	String lo_no;
	String goods_no;
	String page_no;
	Integer price;
	Integer discount;
	Integer use_point;
	String payment_method;
	Integer total_payment;
	String payment_state;
	Date payment_date;
	
	String user_name;
	String showPayment;
	String showPrice;
	String showDiscount;
	DecimalFormat fmt = new DecimalFormat("###,###");
	String lo_name;
	String welcomeDate;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
	
	public String getPayment_no() {
		return payment_no;
	}
	public void setPayment_no(String payment_no) {
		this.payment_no = payment_no;
	}
	public Integer getUser_no() {
		return user_no;
	}
	public void setUser_no(Integer user_no) {
		this.user_no = user_no;
	}
	public String getLo_no() {
		return lo_no;
	}
	public void setLo_no(String lo_no) {
		switch (lo_no) {
		case "1001":
			setLo_name("강남점");
			break;
		case "1002":
			setLo_name("강북점");
			break;
		case "1003":
			setLo_name("강서점");
			break;

		default:
			break;
		}
		this.lo_no = lo_no;
	}
	public String getGoods_no() {
		return goods_no;
	}
	public void setGoods_no(String goods_no) {
		this.goods_no = goods_no;
	}
	public String getPage_no() {
		return page_no;
	}
	public void setPage_no(String page_no) {
		this.page_no = page_no;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		showPrice = fmt.format(price) + "원";
		this.price = price;
	}
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		showDiscount = fmt.format(discount) + "원";
		this.discount = discount;
	}
	public Integer getUse_point() {
		return use_point;
	}
	public void setUse_point(Integer use_point) {
		this.use_point = use_point;
	}
	public String getPayment_method() {
		return payment_method;
	}
	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}
	public Integer getTotal_payment() {
		return total_payment;
	}
	public void setTotal_payment(Integer total_payment) {
		showPayment = fmt.format(total_payment) + "원";
		this.total_payment = total_payment;
	}
	public String getPayment_state() {
		return payment_state;
	}
	public void setPayment_state(String payment_state) {
		this.payment_state = payment_state;
	}
	public Date getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(Date payment_date) {
		welcomeDate = sdf.format(payment_date);
		this.payment_date = payment_date;
	}
	public String getWelcomeDate() {
		return welcomeDate;
	}
	public void setWelcomeDate(String welcomeDate) {
		try {
			payment_date = sdf.parse(welcomeDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		this.welcomeDate = welcomeDate;
	}
	public String getLo_name() {
		return lo_name;
	}
	public void setLo_name(String lo_name) {
		this.lo_name = lo_name;
	}
	public String getShowPayment() {
		return showPayment;
	}
	public void setShowPayment(String showPayment) {
		this.showPayment = showPayment;
	}
	public String getShowPrice() {
		return showPrice;
	}
	public void setShowPrice(String showPrice) {
		this.showPrice = showPrice;
	}
	public String getShowDiscount() {
		return showDiscount;
	}
	public void setShowDiscount(String showDiscount) {
		this.showDiscount = showDiscount;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	
}
