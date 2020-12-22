package com.korea.health.user.model.payment;

import org.apache.ibatis.type.Alias;

@Alias("payment_list")
public class Payment_List {
	String sel_no,payment_no,p_no, origin_price, discount_price, point_price, pay_way, payment_date,save_point;
	String p_title, user_id;
	
	public String getSel_no() {
		return sel_no;
	}

	public void setSel_no(String sel_no) {
		this.sel_no = sel_no;
	}

	public String getPayment_no() {
		return payment_no;
	}

	public void setPayment_no(String payment_no) {
		this.payment_no = payment_no;
	}

	public String getP_no() {
		return p_no;
	}

	public void setP_no(String p_no) {
		this.p_no = p_no;
	}

	public String getOrigin_price() {
		return origin_price;
	}

	public void setOrigin_price(String origin_price) {
		this.origin_price = origin_price;
	}

	public String getDiscount_price() {
		return discount_price;
	}

	public void setDiscount_price(String discount_price) {
		this.discount_price = discount_price;
	}

	public String getPoint_price() {
		return point_price;
	}

	public void setPoint_price(String point_price) {
		this.point_price = point_price;
	}

	public String getPay_way() {
		return pay_way;
	}

	public void setPay_way(String pay_way) {
		this.pay_way = pay_way;
	}

	public String getPayment_date() {
		return payment_date;
	}

	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}

	public String getSave_point() {
		return save_point;
	}

	public void setSave_point(String save_point) {
		this.save_point = save_point;
	}

	public String getP_title() {
		return p_title;
	}

	public void setP_title(String p_title) {
		this.p_title = p_title;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "payment_list [ sel_no = " + sel_no + ", payment_no = " + payment_no + ", p_no = " + p_no
				+ ", origin_price = " + origin_price + ", discount_price = " + discount_price + ", point_price = "
				+ point_price + ", pay_way = " + pay_way + ", payment_date = " + payment_date + ", save_point = "
				+ save_point + ", p_title = " + p_title + " ]";
	}

	
	
}
