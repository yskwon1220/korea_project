package com.korea.health.admin.model.reservation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReservationMapper {
	List<ReservationVO> reservationList();
	
}
