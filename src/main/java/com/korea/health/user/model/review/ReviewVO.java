package com.korea.health.user.model.review;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;
@Alias("reviewVO")
public class ReviewVO {
	//필드와 맞지 않는 데이터형일 경우 ==>db의 타입이랑 VO의 타입이랑 일치하지않으면 발생하는오류
	public Integer review_no =0;
	Integer no =0;
	Integer cnt=0;
	String tr_no="", lo_no="", title="", pw="", content="", star="", pid="";
	String review_file_name = "";
	Date regdate;
	
	private MultipartFile review_file;
	
	public void setReview_file(MultipartFile review_file) {
		review_file_name = review_file.getOriginalFilename();
		this.review_file = review_file;
	}
	

	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	
	
	public Integer getReview_no() {
		return review_no;
	}
	public void setReview_no(Integer review_no) {
		this.review_no = review_no;
	}
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public String getTr_no() {
		return tr_no;
	}
	public void setTr_no(String tr_no) {
		this.tr_no = tr_no;
	}
	public String getLo_no() {
		return lo_no;
	}
	public void setLo_no(String lo_no) {
		this.lo_no = lo_no;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getContent() {
		if(content == null)
			content= "";
		return content;
	}
	public void setContent(String content) {
		if(content == null)
			content= "";
		this.content = content;
	}
	
	public String getContentBr() {
		return getContent().replaceAll("\n", "<br>");
	}
	
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "ReviewVO [review_no=" + review_no + ", no=" + no + ", cnt=" + cnt + ", tr_no=" + tr_no + ", lo_no="
				+ lo_no + ", review_file=" + review_file + ", title=" + title + ", pw=" + pw + ", content=" + content
				+ ", star=" + star + ", pid=" + pid + ", regdate=" + regdate + "]";
	}

	
}
