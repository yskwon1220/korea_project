package com.korea.health.admin.model.trainer;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("trainerVO")
public class TrainerVO {
	Integer tr_no = 0;
	String lo_no;
	String tr_name;
	Integer isManage;
	String content;
	Integer star;
	Date regdate;
	String tr_pic;
	
	String lo_name;
	String manager;
	MultipartFile pic;
	String welcomeDate;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");

	public Integer getTr_no() {
		return tr_no;
	}
	public void setTr_no(Integer tr_no) {
		this.tr_no = tr_no;
	}
	public String getLo_no() {
		return lo_no;
	}
	public void setLo_no(String lo_no) {
		switch (lo_no) {
		case "1001":
			lo_name = "피트니스 클럽 강남점";
			break;
		case "1002":
			lo_name = "피트니스 클럽 강동점";
			break;
		case "1003":
			lo_name = "피트니스 클럽 강서점";
			break;
		case "1004":
			lo_name = "피트니스 클럽 강북점";
			break;
		default:
			break;
		}
		this.lo_no = lo_no;
	}
	public String getTr_name() {
		return tr_name;
	}
	public void setTr_name(String tr_name) {
		this.tr_name = tr_name;
	}
	public Integer getIsManage() {
		return isManage;
	}
	public void setIsManage(Integer isManage) {
		if(isManage == 1) {
			manager = "지점장";
		}else {
			manager = "사원";
		}
		this.isManage = isManage;
	}
	public String getContent() {
		if(content == null)
			content = "";
		return content;
	}
	public String getContentTrans() {
		return getContent().replaceAll("\n", "<br>");
	}
	public void setContent(String content) {
		if(content == null)
			content = "";
		this.content = content;
	}
	public Integer getStar() {
		if(star == null) {
			star = 0;
		}
		return star;
	}
	public void setStar(Integer star) {
		this.star = star;
	}
	public MultipartFile getPic() {
		return pic;
	}
	public void setPic(MultipartFile pic) {
		tr_pic = pic.getOriginalFilename();
		this.pic = pic;
	}
	public String getTr_pic() {
		return tr_pic;
	}
	public void setTr_pic(String tr_pic) {
		this.tr_pic = tr_pic;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		welcomeDate = sdf.format(regdate);
		this.regdate = regdate;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		if(manager.equals("지점장")) {
			isManage = 1;
		}else {
			isManage = 0;
		}
		this.manager = manager;
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
	public String getLo_name() {
		return lo_name;
	}
	public void setLo_name(String lo_name) {
		switch (lo_name) {
		case "피트니스 클럽 강남점":
			lo_no = "1001";
			break;
		case "피트니스 클럽 강동점":
			lo_no = "1002";
			break;
		case "피트니스 클럽 강서점":
			lo_no = "1003";
			break;
		case "피트니스 클럽 강북점":
			lo_no = "1004";
			break;
		default:
			break;
		}
		this.lo_name = lo_name;
	}
	@Override
	public String toString() {
		return "TrainerVO [tr_no=" + tr_no + ", lo_no=" + lo_no + ", tr_name=" + tr_name + ", isManage=" + isManage
				+ ", content=" + content + ", star=" + star + ", regdate=" + regdate + ", tr_pic=" + tr_pic
				+ ", lo_name=" + lo_name + ", manager=" + manager + ", pic=" + pic + ", welcomeDate=" + welcomeDate
				+ ", sdf=" + sdf + "]";
	}
	
	
}
