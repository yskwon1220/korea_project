package com.korea.health.provider;

// url 카테고리 세팅
public class Kind {
	
	String cate;	// 조원 별 페이지 카테고리
	String service;	// 카테고리 별 서비스 구현 페이지
	String mainUrl;	// 위 셋을 다 합쳐서 페이지가 열릴 로컬 url
	
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getMainUrl() {
		return mainUrl;
	}
	public void setMainUrl(String mainUrl) {
		this.mainUrl = mainUrl;
	}
}
