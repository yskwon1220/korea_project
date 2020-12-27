package com.korea.health.user.model.fnq;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FnqboardMapper {
	List<FnqboardVO> fnqList(FnqPageInfo fnqInfoVo);
	List<FnqboardVO> fnqList_2(FnqPageInfo fnqInfoVo);

	Integer totalCnt();
	int watchCnt(int board_no);
	List<FnqboardVO> listSch(FnqboardVO vo);
	
	FnqboardVO detail(int board_no);
	void deleteNum(FnqboardVO vo);
	void insert(FnqboardVO vo);
	int reply(FnqboardVO vo);
	int modify(FnqboardVO vo);
	boolean delete(int board_no);
	
	
	

	
	
}
