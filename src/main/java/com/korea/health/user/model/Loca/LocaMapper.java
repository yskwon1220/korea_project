package com.korea.health.user.model.Loca;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LocaMapper {

	List<LocaVO> list();
	
	/* List<LocaVO> listSch(LocaVO vo); */
	
	LocaVO detail(String no);
	
	/* void insert(LocaVO vo); */
	
	/* void modify(int no); */
	
	/* int delete(ExamVO vo); */
}
