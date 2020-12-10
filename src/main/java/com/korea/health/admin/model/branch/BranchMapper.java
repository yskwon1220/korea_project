package com.korea.health.admin.model.branch;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BranchMapper {
	
	List<BranchVO> branchList();	

}

