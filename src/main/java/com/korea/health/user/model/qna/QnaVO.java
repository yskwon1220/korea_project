package com.korea.health.user.model.qna;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("qnaVO")
public class QnaVO {
	public int qna_no;
	int no;
	int cnt;
	String kind, title, context, file_0;
	Date regdate;
	public int getQna_no() {
		return qna_no;
	}
	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public String getContext() {
		if(context == null)
			context = "";
		
		return context;
	}

	public void setContext (String context) {
		if(context == null)
			context = "";
		this.context = context;
	}
	
	public String getContextBr() {
		return getContext().replaceAll("\n", "<br>");
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
