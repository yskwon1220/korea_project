package com.korea.health.user.model.payment;

import org.apache.ibatis.type.Alias;

@Alias("cardVO")
public class CardVO {

	Integer card_num1,card_num2,card_num3,card_num4,cvc;
	String regdate, title,ticket;
	
	
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
	public Integer getCard_num1() {
		return card_num1;
	}
	public void setCard_num1(Integer card_num1) {
		this.card_num1 = card_num1;
	}
	public Integer getCard_num2() {
		return card_num2;
	}
	public void setCard_num2(Integer card_num2) {
		this.card_num2 = card_num2;
	}
	public Integer getCard_num3() {
		return card_num3;
	}
	public void setCard_num3(Integer card_num3) {
		this.card_num3 = card_num3;
	}
	public Integer getCard_num4() {
		return card_num4;
	}
	public void setCard_num4(Integer card_num4) {
		this.card_num4 = card_num4;
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
	
	@Override
	public String toString() {
		return "cardVO [card_num1=" + card_num1 + ", card_num2=" + card_num2 + ", card_num3=" + card_num3
				+ ", card_num4=" + card_num4 + ", cvc=" + cvc + ", regdate=" + regdate + "]";
	}
	
	
	
	
	
}
