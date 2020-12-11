package com.korea.health.user.model.fnq;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OneboardMapper {
	List<OneboardVO> fnqList();
	List<OneboardVO> listSch(OneboardVO vo);
	
	OneboardVO detail(int board_no);
	
	void insert(OneboardVO vo);
	void modify(int no);
	int delete(OneboardVO vo);
}
