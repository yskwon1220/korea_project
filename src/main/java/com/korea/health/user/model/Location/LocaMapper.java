package com.korea.health.user.model.Location;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LocaMapper {

	List<LocationVO> list();
	
	LocationVO detail(String lo_no);
	
}
