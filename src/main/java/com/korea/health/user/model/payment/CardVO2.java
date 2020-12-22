package com.korea.health.user.model.payment;

import org.apache.ibatis.type.Alias;

@Alias("cardVO2")
public class CardVO2 {
	Integer cvc;
	String regdate,card_main_num1,card_main_num2,card_main_num3,card_main_num4;
	Integer regi_num, validity, card_pass, phone_num,save_point;
	String origin_price,tot_price,card_select,coupon_price,
	basic_discount,point_price,pay_way,title,ticket;

	String discount_price, coupon_no,payment_date;
	
	Integer total_payment = 0;
	Integer discount;
	Integer use_point;
	Integer real_payment;
	
	public String getTicket() {
		return ticket;
	}

	public void setTicket(String ticket) {
		this.ticket = ticket;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getSave_point() {
		return save_point;
	}

	public void setSave_point(Integer save_point) {
		this.save_point = save_point;
	}

	public String getDiscount_price() {
		return discount_price;
	}

	public void setDiscount_price(String discount_price) {
		discount = Integer.parseInt(discount_price);
		total_payment -= discount;
		this.discount_price = discount_price;
	}

	public String getCoupon_no() {
		return coupon_no;
	}

	public void setCoupon_no(String coupon_no) {
		this.coupon_no = coupon_no;
	}

	public String getPayment_date() {
		return payment_date;
	}

	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}

	public String getCard_main_num1() {
		return card_main_num1;
	}

	public void setCard_main_num1(String card_main_num1) {
		this.card_main_num1 = card_main_num1;
	}

	public String getCard_main_num2() {
		return card_main_num2;
	}

	public void setCard_main_num2(String card_main_num2) {
		this.card_main_num2 = card_main_num2;
	}

	public String getCard_main_num3() {
		return card_main_num3;
	}

	public void setCard_main_num3(String card_main_num3) {
		this.card_main_num3 = card_main_num3;
	}

	public String getCard_main_num4() {
		return card_main_num4;
	}

	public void setCard_main_num4(String card_main_num4) {
		this.card_main_num4 = card_main_num4;
	}

	public String getOrigin_price() {
		return origin_price;
	}

	public void setOrigin_price(String origin_price) {
		
		String temp = "";
		for (String str : origin_price.substring(0, origin_price.lastIndexOf("원")).split(",")) {
			temp += str;
		}
		real_payment = Integer.parseInt(temp);
		total_payment += real_payment;
		
		this.origin_price = origin_price;
	}

	public String getTot_price() {
		return tot_price;
	}

	public void setTot_price(String tot_price) {
		this.tot_price = tot_price;
	}

	public String getCard_select() {
		return card_select;
	}

	public void setCard_select(String card_select) {
		this.card_select = card_select;
	}

	public String getCoupon_price() {
		return coupon_price;
	}

	public void setCoupon_price(String coupon_price) {
		this.coupon_price = coupon_price;
	}

	public String getBasic_discount() {
		return basic_discount;
	}

	public void setBasic_discount(String basic_discount) {
		this.basic_discount = basic_discount;
	}

	public String getPoint_price() {
		return point_price;
	}

	public void setPoint_price(String point_price) {
		String temp = "";
		for (String str : point_price.substring(0, point_price.lastIndexOf("원")).split(",")) {
			temp += str;
		}
		use_point = Integer.parseInt(temp);
		total_payment -= use_point;
		this.point_price = point_price;
	}

	public String getPay_way() {
		return pay_way;
	}

	public void setPay_way(String pay_way) {
		this.pay_way = pay_way;
	}

	public Integer getCvc() {
		return cvc;
	}

	public void setCvc(Integer cvc) {
		this.cvc = cvc;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public Integer getRegi_num() {
		return regi_num;
	}

	public void setRegi_num(Integer regi_num) {
		this.regi_num = regi_num;
	}

	public Integer getValidity() {
		return validity;
	}

	public void setValidity(Integer validity) {
		this.validity = validity;
	}

	public Integer getCard_pass() {
		return card_pass;
	}

	public void setCard_pass(Integer card_pass) {
		this.card_pass = card_pass;
	}

	public Integer getPhone_num() {
		return phone_num;
	}

	public void setPhone_num(Integer phone_num) {
		this.phone_num = phone_num;
	}
	
	public Integer getTotal_payment() {
		return total_payment;
	}
	public void setTotal_payment(Integer total_payment) {
		this.total_payment = total_payment;
	}
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

	public Integer getUse_point() {
		return use_point;
	}

	public void setUse_point(Integer use_point) {
		this.use_point = use_point;
	}

	public Integer getReal_payment() {
		return real_payment;
	}

	public void setReal_payment(Integer real_payment) {
		this.real_payment = real_payment;
	}
	
	

	@Override
	public String toString() {
		return "cardVO2 [cvc=" + cvc + ", regdate=" + regdate + ", card_main_num1=" + card_main_num1
				+ ", card_main_num2=" + card_main_num2 + ", card_main_num3=" + card_main_num3 + ", card_main_num4="
				+ card_main_num4 + ", regi_num=" + regi_num + ", validity=" + validity + ", card_pass=" + card_pass
				+ ", phone_num=" + phone_num + ", save_point=" + save_point + ", origin_price=" + origin_price
				+ ", tot_price=" + tot_price + ", card_select=" + card_select + ", coupon_price=" + coupon_price
				+ ", basic_discount=" + basic_discount + ", point_price=" + point_price + ", pay_way=" + pay_way
				+ ", discount_price=" + discount_price + ", coupon_no=" + coupon_no + ", payment_date=" + payment_date
				+ "]";
	}







	
}
