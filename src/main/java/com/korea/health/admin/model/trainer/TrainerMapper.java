package com.korea.health.admin.model.trainer;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TrainerMapper {
	
	List<TrainerVO> trainerList();	// db에 존재하는 트레이너 리스트
	
	TrainerVO trainerDetail(int tr_no);	// 트레이너 디테일
	
	Integer trainerInsert(TrainerVO vo);
}

