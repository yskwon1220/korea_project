package com.korea.health.admin.model.mainSetting;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.user.model.notice.NoticeVO;

@Mapper
public interface UploadImgMapper {
	
	List<UploadMainImgVO> list();
	UploadMainImgVO Detail(int imgNo);	
	void insert(UploadMainImgVO vo);	
	UploadMainImgVO detail(int imgNo);
	int fileDelete(int imgNo);	
	int modify(UploadMainImgVO vo);	
	boolean delete(int imgNo);
}

