package com.korea.health.user.model.payment;

import org.apache.ibatis.type.Alias;

@Alias("cardVO2")
public class cardVO2 {

	Integer regi_num, validity, card_pass, phone_num;

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

	@Override
	public String toString() {
		return "cardVO2 [regi_num=" + regi_num + ", validity=" + validity + ", card_pass=" + card_pass + ", phone_num="
				+ phone_num + "]";
	}
	
}
