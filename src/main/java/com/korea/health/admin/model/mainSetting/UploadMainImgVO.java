package com.korea.health.admin.model.mainSetting;

import org.springframework.web.multipart.MultipartFile;

public class UploadMainImgVO {
	String image;
	int imgNo;
	String content_1="", content_2="";
	MultipartFile imgUpload;
	
	
	public String getContent_1() {
		return content_1;
	}
	public void setContent_1(String content_1) {
		this.content_1 = content_1;
	}
	public String getContent_2() {
		return content_2;
	}
	public void setContent_2(String content_2) {
		this.content_2 = content_2;
	}
	
	public MultipartFile getImgUpload() {
		return imgUpload;
	}
	public void setImgUpload(MultipartFile imgUpload) {
		image = imgUpload.getOriginalFilename();
		this.imgUpload = imgUpload;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getImgNo() {
		return imgNo;
	}
	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}
	@Override
	public String toString() {
		return "uploadMainImgVO [image=" + image + ", imgNo=" + imgNo + ", content_1=" + content_1 + ", content_2="
				+ content_2 + "]";
	}
	
	
	
}
