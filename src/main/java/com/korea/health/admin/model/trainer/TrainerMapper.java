package com.korea.health.admin.model.trainer;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.admin.model.branch.BranchVO;
import com.korea.health.service.Pagenation;

@Mapper
public interface TrainerMapper {
	
	List<TrainerVO> trainerList(Pagenation pagenation);	// db에 존재하는 트레이너 리스트
	
	TrainerVO trainerDetail(int tr_no);	// 트레이너 디테일
	
	Integer trainerInsert(TrainerVO vo);
	
	Integer fileDelete(int tr_no);
	
	Integer trainerModify(TrainerVO vo);
	
	Integer trainerDelete(TrainerVO vo);
	
	Integer newNum(TrainerVO vo);
	
	Integer totalCnt();
	
	List<BranchVO> branchList();
	
}

