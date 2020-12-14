package com.korea.health.user.model.Res;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ResMapper {

	List<ResVO> list();



	 void insert(ResVO rvo);
	  
	
}
