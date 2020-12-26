	package com.korea.health.user.model.Location;

	import java.text.SimpleDateFormat;
	import java.util.Date;

	import org.apache.ibatis.type.Alias;
	import org.springframework.web.multipart.MultipartFile;

	@Alias("locationVO")
	public class LocationVO {

		Integer lo_cnt = 0;
		   String lo_no;
		   String lo_name;
		   String lo_pic;
		   String lo_tel;
		   String lo_addr;
		   Integer maximum;
		   Integer income;
		   Integer outcome;
		   Date regdate;
		   String content;
		   
		   MultipartFile pic;
		   String welcomeDate;
		   SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
		   
		   
		   public Integer getLo_cnt() {
		      return lo_cnt;
		   }

		   public void setLo_cnt(Integer lo_cnt) {
		      this.lo_cnt = lo_cnt;
		   }

		   public String getLo_no() {
		      return lo_no;
		   }

		   public void setLo_no(String lo_no) {
		      this.lo_no = lo_no;
		   }

		   public String getLo_name() {
		      return lo_name;
		   }

		   public void setLo_name(String lo_name) {
		      this.lo_name = lo_name;
		   }
		   public String getLo_tel() {
		      return lo_tel;
		   }

		   public void setLo_tel(String lo_tel) {
		      this.lo_tel = lo_tel;
		   }

		   public String getLo_addr() {
		      return lo_addr;
		   }

		   public void setLo_addr(String lo_addr) {
		      this.lo_addr = lo_addr;
		   }

		   public MultipartFile getPic() {
		      return pic;
		   }
		   public void setPic(MultipartFile pic) {
		      lo_pic = pic.getOriginalFilename();
		      this.pic = pic;
		   }
		   
		   public String getLo_pic() {
		      return lo_pic;
		   }

		   public void setLo_pic(String lo_pic) {
		      this.lo_pic = lo_pic;
		   }
		   public Integer getMaximum() {
		      return maximum;
		   }

		   public void setMaximum(Integer maximum) {
		      this.maximum = maximum;
		   }

		   public Integer getIncome() {
		      return income;
		   }

		   public void setIncome(Integer income) {
		      this.income = income;
		   }

		   public Integer getOutcome() {
		      return outcome;
		   }

		   public void setOutcome(Integer outcome) {
		      this.outcome = outcome;
		   }

		   public Date getRegdate() {
		      return regdate;
		   }

		   public void setRegdate(Date regdate) {
		      welcomeDate = sdf.format(regdate);
		      this.regdate = regdate;
		   }
		   
		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}

	}

