package com.korea.health.user.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("qnaVO")
public class QnaVO {
	Integer qna_no, no, cnt;
	String kind, title, context, file_0;
	Date regdate;
	public Integer getQna_no() {
		return qna_no;
	}
	public void setQna_no(Integer qna_no) {
		this.qna_no = qna_no;
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
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
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
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "QnaVO [qna_no=" + qna_no + ", no=" + no + ", cnt=" + cnt + ", kind=" + kind + ", title=" + title
				+ ", context=" + context + ", file_0=" + file_0 + ", regdate=" + regdate + "]";
	}
	
	
}
