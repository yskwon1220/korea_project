package com.korea.health.admin.model.goods;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("goodsVO")
public class GoodsVO {
	Integer goods_cnt = 0;
	String goods_no;
	String goods_name;
	Integer goods_price;
	Integer reserv_cnt;
	Date regdate;
	
	String showPrice;
	DecimalFormat fmt = new DecimalFormat("###,###");
	String welcomeDate;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
	
	public Integer getGoods_cnt() {
		return goods_cnt;
	}
	public void setGoods_cnt(Integer goods_cnt) {
		this.goods_cnt = goods_cnt;
	}
	public String getGoods_no() {
		return goods_no;
	}
	public void setGoods_no(String goods_no) {
		this.goods_no = goods_no;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public Integer getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(Integer goods_price) {
		showPrice = fmt.format(goods_price) + "원";
		this.goods_price = goods_price;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		welcomeDate = sdf.format(regdate);
		this.regdate = regdate;
	}
	public String getShowPrice() {
		return showPrice;
	}
	public void setShowPrice(String showPrice) {
		this.showPrice = showPrice;
	}
	public String getWelcomeDate() {
		return welcomeDate;
	}
	public void setWelcomeDate(String welcomeDate) {
		try {
			regdate = sdf.parse(welcomeDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		this.welcomeDate = welcomeDate;
	}
	
	public Integer getReserv_cnt() {
		return reserv_cnt;
	}
	public void setReserv_cnt(Integer reserv_cnt) {
		this.reserv_cnt = reserv_cnt;
	}
	
	@Override
	public String toString() {
		return "GoodsVO [goods_cnt=" + goods_cnt + ", goods_no=" + goods_no + ", goods_name=" + goods_name
				+ ", goods_price=" + goods_price + ", regdate=" + regdate + ", showPrice=" + showPrice
				+ ", welcomeDate=" + welcomeDate + ", sdf=" + sdf + "]";
	}
	
}
