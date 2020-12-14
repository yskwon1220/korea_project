package com.korea.health.user.model.Reservation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.user.model.Trainer.TrainerVO;


@Mapper
public interface ResMapper {
	List<ResTimeVO> selectByRes(ResTimeVO timeVO);	
	
	
	List<ReservationVO> list();

	
	
	void insert(ReservationVO rvo);

	int delete(ReservationVO rvo);
	
	
	
	List<ReservationVO> MyResList(String user_name);
	
	
	ReservationVO MyDetailList(String re_no);
	
	/* void modify(int no); */
	
	
}
