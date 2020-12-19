package com.korea.health.admin.model.dashboard;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.admin.model.reservation.ReservationVO;
import com.korea.health.admin.model.result.ResultVO;
import com.korea.health.user.model.fnq.FnqboardVO;

@Mapper
public interface DashBoardMapper {
	
	Integer monthlyPayment(String startDate, String endDate);
	List<ReservationVO> reservationList(int startCnt, int endCnt);
	List<FnqboardVO> fnqList(int startCnt, int endCnt);
	List<ResultVO>	paymentList(int startCnt, int endCnt);
	String findUser(int user_no);
	
}
