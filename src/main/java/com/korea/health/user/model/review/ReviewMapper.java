package com.korea.health.user.model.review;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReviewMapper {
	List<ReviewVO> reviewlist(ReviewPagingInfo infoVo);
	List<ReviewVO> listsch(ReviewVO vo);
	
	Integer totalCnt();
	
	ReviewVO detail(int review_no);
	void insert(ReviewVO vo);
	
	int modify(ReviewVO vo);
	
	
	boolean delete(int review_vo);
	
	
}
