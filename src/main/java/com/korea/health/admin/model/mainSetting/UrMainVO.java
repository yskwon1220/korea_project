package com.korea.health.admin.model.mainSetting;

public class UrMainVO {
	String title ="", content="";
	int mainNo;
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
		this.content = content;
	}

	public int getMainNo() {
		return mainNo;
	}

	public void setMainNo(int mainNo) {
		this.mainNo = mainNo;
	}

	@Override
	public String toString() {
		return "UrMainVO [title=" + title + ", content=" + content + ", mainNo=" + mainNo + "]";
	}
	
}
