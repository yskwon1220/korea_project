package com.korea.health.user.model.fnq;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FnqboardMapper {
	List<FnqboardVO> fnqList(FnqPageInfo fnqInfoVo);

	Integer totalCnt();
	
	List<FnqboardVO> listSch(FnqboardVO vo);
	
	FnqboardVO detail(int board_no);
	
	void insert(FnqboardVO vo);
	int modify(FnqboardVO vo);
	boolean delete(int board_no);
}
