package com.korea.health.user.model.payment;

import java.util.ArrayList;
import java.util.List;

public class payMember {

	String id, name, email,card_company, owner, coupon_no,coupon_content;
	Integer tel, point, validity, cvc, card_pass, payment_pass, user_no, coupon_discount, coupon_contri;
	Long card_number;

	
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

	public payMember(String id, String name) {
		super();
		this.id = id;
		this.name = name;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getTel() {
		return tel;
	}

	public void setTel(Integer tel) {
		this.tel = tel;
	}

	@Override
	public String toString() {
		return "payMember [id=" + id + ", name=" + name + ", email=" + email + ", card_company=" + card_company
				+ ", owner=" + owner + ", coupon_no=" + coupon_no + ", coupon_content=" + coupon_content + ", tel="
				+ tel + ", point=" + point + ", validity=" + validity + ", cvc=" + cvc + ", card_pass=" + card_pass
				+ ", payment_pass=" + payment_pass + ", user_no=" + user_no + ", coupon_discount=" + coupon_discount
				+ ", coupon_contri=" + coupon_contri + ", card_number=" + card_number + "]";
	}



}
