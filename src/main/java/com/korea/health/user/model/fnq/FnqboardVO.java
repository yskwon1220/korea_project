package com.korea.health.user.model.fnq;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("fnqboardVO")
public class FnqboardVO {
	public int board_no;
	String user_id="";
	String title = "", content = "", reply = "", rep = "";
	Date regdate;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
	String ymd;
	


	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {

		return content;
	}

	public void setContent(String content) {
		if (content == null)
			content = "";
		this.content = content;
	}

	public String getContentBr() {
		return getContent().replaceAll("\n", "<br>");
	}

	
	public String getRep() {
		return rep;
	}

	public void setRep(String rep) {


		this.rep = rep;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		ymd = sdf.format(regdate);
		this.regdate = regdate;


	
	
	}

	public String getReply() {
		return reply;
	}
	public String getReplyBr() {
		return getReply().replaceAll("\n", "<br>");
	}

	public void setReply(String reply) {
		this.reply = reply;
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
		return "FnqboardVO [board_no=" + board_no + ", user_id=" + user_id + ", title=" + title + ", content=" + content
				+ ", reply=" + reply + ", rep=" + rep + ", regdate=" + regdate + "]";
	}

	
}
