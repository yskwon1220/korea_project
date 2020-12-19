package com.korea.health.admin.model.result;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("resultInfoVO")
public class resultInfoVO {
	String lo_no;
	String goods_no;
	Integer total_payment;
	Date payment_date;
	
	String user_name;
	String showPayment;
	DecimalFormat fmt = new DecimalFormat("###,###");
	String lo_name;
	String welcomeDate;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
	
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
	public Integer getTotal_payment() {
		return total_payment;
	}
	public void setTotal_payment(Integer total_payment) {
		showPayment = fmt.format(total_payment) + "원";
		this.total_payment = total_payment;
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
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	
}
