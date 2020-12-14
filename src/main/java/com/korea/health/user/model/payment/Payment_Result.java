package com.korea.health.user.model.payment;

public class Payment_Result {
	String price,card_select,coupon_price,basic_price,point_price,origin_price;

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
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

	public String getBasic_price() {
		return basic_price;
	}

	public void setBasic_price(String basic_price) {
		this.basic_price = basic_price;
	}

	public String getPoint_price() {
		return point_price;
	}

	public void setPoint_price(String point_price) {
		this.point_price = point_price;
	}

	public String getOrigin_price() {
		return origin_price;
	}

	public void setOrigin_price(String origin_price) {
		this.origin_price = origin_price;
	}

	@Override
	public String toString() {
		return "Payment_Result [price=" + price + ", card_select=" + card_select + ", coupon_price=" + coupon_price
				+ ", basic_price=" + basic_price + ", point_price=" + point_price + ", origin_price=" + origin_price
				+ "]";
	}
	
}
