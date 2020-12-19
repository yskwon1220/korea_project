package com.korea.health.admin.model.dashboard;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.admin.model.reservation.ReservationVO;

@Mapper
public interface DashBoardMapper {
	
	Integer monthlyPayment(String startDate, String endDate);
	List<ReservationVO> reservationList();
}
