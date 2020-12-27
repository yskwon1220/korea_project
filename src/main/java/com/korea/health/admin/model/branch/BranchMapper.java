package com.korea.health.admin.model.branch;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.admin.model.trainer.TrainerVO;
import com.korea.health.service.Pagenation;

@Mapper
public interface BranchMapper {
	
	List<BranchVO> branchList();	
	
	BranchVO branchDetail(int lo_cnt);	// 트레이너 디테일
	
	Integer branchInsert(BranchVO vo);
	
	Integer fileDelete(int lo_cnt);
	
	Integer branchModify(BranchVO vo);
	
	Integer branchDelete(BranchVO vo);
	
	Integer newNum(BranchVO vo);
	
	String branchCnt();
	
	List<TrainerVO> branchTrainerList(Pagenation pagenation);
	
	Integer branchTrainerDelete(String lo_no);
	
	Integer totalCnt(String lo_no);
}

