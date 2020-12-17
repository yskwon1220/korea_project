package com.korea.health.admin.model.reservation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.admin.model.branch.BranchVO;
import com.korea.health.service.Pagenation;

@Mapper
public interface ReservationMapper {
	Integer totalCnt(String lo_no);
	//페이징 처리를 위한 것
	
	
	/* 완료 */
	List<BranchVO> branchList();
	//info에 보여준 지점 리스트
	
	/* 완료 */
	List<ReservationVO> reservationList(Pagenation pagenation);
	//페이징 하기 위한 각 지점별 list
	
	
	ReservationVO reservationDetail(int re_no);
	//위 각 지점 리스트 중 디테일로 감
	
	Integer reservationInsert(ReservationVO rvo);
	//응 삽입
	
	Integer reservationDelete(ReservationVO rvo);
	//응 삭제
	
	Integer newNum(ReservationVO rvo);
	
}
