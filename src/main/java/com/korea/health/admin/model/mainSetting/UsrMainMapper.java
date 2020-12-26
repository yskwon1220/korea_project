package com.korea.health.admin.model.mainSetting;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UsrMainMapper {
	
	List<UrMainVO> urList();
	UrMainVO urDetail(int mainNo);	
	void urInsert(UrMainVO vo);	
	int urModify(UrMainVO vo);	
	boolean urDelete(int mainNo);
}

