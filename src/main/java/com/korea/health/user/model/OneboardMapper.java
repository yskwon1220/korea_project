package com.korea.health.user.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OneboardMapper {
	List<OneboardVO> onelist();
	List<OneboardVO> listSch(OneboardVO vo);
	
	OneboardVO detail(int board_no);
	
	void insert(OneboardVO vo);
	void modify(int no);
	int delete(OneboardVO vo);
}
