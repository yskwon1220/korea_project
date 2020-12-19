package com.korea.health.user.model.review;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

public class ReviewVO {
	//필드와 맞지 않는 데이터형일 경우 ==>db의 타입이랑 VO의 타입이랑 일치하지않으면 발생하는오류
	public Integer review_no = 0 ;
	Integer cnt=0, starCnt=0;
	String tr_no="", lo_no="", title="",  content="",  user_id="";
	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	String review_file_name="" ;
	Date regdate;
	
	private MultipartFile review_file;
	
	public String getReview_file_name() {
		if(review_file_name != null && review_file_name.trim().equals(""))
			review_file_name = null;
		
		return review_file_name;
	}


	public void setReview_file_name(String review_file_name) {
		this.review_file_name = review_file_name;
	}


	public MultipartFile getReview_file() {
		return review_file;
	}


	public void setReview_file(MultipartFile review_file) {
		review_file_name = review_file.getOriginalFilename();
		this.review_file = review_file;
	}
	

	
	
	public Integer getReview_no() {
		return review_no;
	}
	public void setReview_no(Integer review_no) {
		this.review_no = review_no;
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
	
	
	public Integer getStarCnt() {
		return starCnt;
	}


	public void setStarCnt(Integer starCnt) {
		this.starCnt = starCnt;
	}


	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}


	@Override
	public String toString() {
		return "ReviewVO [review_no=" + review_no + ", cnt=" + cnt + ", starCnt=" + starCnt + ", tr_no=" + tr_no
				+ ", lo_no=" + lo_no + ", title=" + title + ", content=" + content + ", user_id=" + user_id
				+ ", review_file_name=" + review_file_name + ", regdate=" + regdate + ", review_file=" + review_file
				+ "]";
	}




	
}
