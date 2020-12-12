package com.korea.health.user.model.Reservation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ResMapper {

	List<ReservationVO> list();
	void insert(ReservationVO rvo);
	List<ResTimeVO> selectByRes(ResTimeVO timeVO);	
}
