package com.korea.health.user.model.review;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.user.model.Reservation.ReservationVO;

@Mapper
public interface ReviewMapper {
	List<ReviewVO> reviewlist(ReviewPagingInfo infoVo);
	
	Integer totalCnt();
	
	ReviewVO detail(int review_no);
	ReviewVO chkID(int review_no);
	void insert(ReviewVO vo);
	List<ReservationVO> reviewWrite(String user_id);
	
	void trainerStar(ReviewVO vo);
	
	void modify(ReviewVO vo);
	void fileDelete(ReviewVO vo);
	int updateCnt(int review_no);
	boolean delete(int review_no);
	
	Integer trainerStarDel(ReviewVO vo);
	
	List<ReviewVO> allReviewList();
	int searchID(String user_id);
}
