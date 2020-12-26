package com.korea.health.user.model.payment;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.type.Alias;

@Alias("payMember")
public class PayMember {

	String user_tel,title,ticket,user_id, user_name,user_email, card_company, owner, coupon_no, coupon_content;
	Integer  point, validity, cvc, card_pass, payment_pass, user_no, coupon_discount, coupon_contri;
	Long card_number;
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTicket() {
		return ticket;
	}

	public void setTicket(String ticket) {
		this.ticket = ticket;
	}

	public String getCoupon_no() {
		return coupon_no;
	}

	public void setCoupon_no(String coupon_no) {
		this.coupon_no = coupon_no;
	}

	public String getCoupon_content() {
		return coupon_content;
	}

	public void setCoupon_content(String coupon_content) {
		this.coupon_content = coupon_content;
	}

	public Integer getUser_no() {
		return user_no;
	}

	public void setUser_no(Integer user_no) {
		this.user_no = user_no;
	}

	public Integer getCoupon_discount() {
		return coupon_discount;
	}

	public void setCoupon_discount(Integer coupon_discount) {
		this.coupon_discount = coupon_discount;
	}

	public Integer getCoupon_contri() {
		return coupon_contri;
	}

	public void setCoupon_contri(Integer coupon_contri) {
		this.coupon_contri = coupon_contri;
	}

	public String getCard_company() {
		return card_company;
	}

	public void setCard_company(String card_company) {
		this.card_company = card_company;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public Long getCard_number() {
		return card_number;
	}

	public void setCard_number(Long card_number) {
		this.card_number = card_number;
	}

	public Integer getValidity() {
		return validity;
	}

	public void setValidity(Integer validity) {
		this.validity = validity;
	}

	public Integer getCvc() {
		return cvc;
	}

	public void setCvc(Integer cvc) {
		this.cvc = cvc;
	}

	public Integer getCard_pass() {
		return card_pass;
	}

	public void setCard_pass(Integer card_pass) {
		this.card_pass = card_pass;
	}

	public Integer getPayment_pass() {
		return payment_pass;
	}

	public void setPayment_pass(Integer payment_pass) {
		this.payment_pass = payment_pass;
	}

	public Integer getPoint() {
		return point;
	}

	public void setPoint(Integer point) {
		this.point = point;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}


	public String getUser_tel() {
		return user_tel;
	}

	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	@Override
	public String toString() {
		return "payMember [user_id=" + user_id + ", user_name=" + user_name + ", user_email=" + user_email
				+ ", card_company=" + card_company + ", owner=" + owner + ", coupon_no=" + coupon_no
				+ ", coupon_content=" + coupon_content + ", user_tel=" + user_tel + ", point=" + point + ", validity="
				+ validity + ", cvc=" + cvc + ", card_pass=" + card_pass + ", payment_pass=" + payment_pass
				+ ", user_no=" + user_no + ", coupon_discount=" + coupon_discount + ", coupon_contri=" + coupon_contri
				+ ", card_number=" + card_number + "]";
	}

	
	
	
	

}
