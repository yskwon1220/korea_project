package com.korea.health.admin.model.reservation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.admin.model.branch.BranchVO;
import com.korea.health.service.Pagenation;

@Mapper
public interface ReservationMapper {
	
	List<ReservationVO> reservationList(Pagenation pagenation);
	
	List<BranchVO> branchList();
	
	ReservationVO reservationDetail(int re_no);
	
	Integer reservationInsert(ReservationVO vo);
	
	Integer reservationDelete(ReservationVO vo);
	
	Integer newNum(ReservationVO vo);
	
	Integer totalCnt(String lo_no);
	
}
