package com.korea.health.service;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface VisitSessionMapper {
	Integer visitorInsert(VisitSessionVo vo);
	
	
}
