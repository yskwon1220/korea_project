package com.korea.health.user.model.qna;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("qnaVO")
public class QnaVO {
	public int qna_no;
	int customer_no;
	int cnt;
	String kind="", title="", content="", file_0="";
	Date regdate;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
	String ymd;
	
	public int getQna_no() {
		return qna_no;
	}
	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}
	public int getCustomer_no() {
		return customer_no;
	}
	public void setCustomer_no(int customer_no) {
		this.customer_no = customer_no;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		if(content == null)
			content = "";
		
		return content;
	}

	public void setContent (String content) {
		if(content == null)
			content = "";
		this.content = content;
	}
	
	public String getContentBr() {
		return getContent().replaceAll("\n", "<br>");
	}

	public String getFile_0() {
		return file_0;
	}
	public void setFile_0(String file_0) {
		this.file_0 = file_0;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		ymd = sdf.format(regdate);
		this.regdate = regdate;
	}
	
	public String getYmd() {
		return ymd;
	}

	public void setYmd(String ymd) {
		try {
			regdate = sdf.parse(ymd);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.ymd = ymd;
	}

	
	@Override
	public String toString() {
		return "QnaVO [qna_no=" + qna_no + ", customer_no=" + customer_no + ", cnt=" + cnt + ", kind=" + kind
				+ ", title=" + title + ", content=" + content + ", file_0=" + file_0 + ", regdate=" + regdate + "]";
	}

	
	
}
