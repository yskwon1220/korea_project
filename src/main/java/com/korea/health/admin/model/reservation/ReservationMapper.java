package com.korea.health.admin.model.reservation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.admin.model.branch.BranchVO;
import com.korea.health.service.Pagenation;

@Mapper
public interface ReservationMapper {
	
	/* 완료 */
	List<BranchVO> branchList();
	//info에 보여준 지점 리스트
	
	/* 완료 */
	ReservationVO reservationDetail(int re_no);
	//위 각 지점 리스트 중 디테일로 감
	
	/* 완료 */
	Integer reservationDelete(ReservationVO rvo);
	
	/* 완료 */
	Integer reservationInsert(ReservationVO rvo);
	
	/* 완료 */
	Integer reservationModify(ReservationVO rvo);
	
	
	List<ReservationVO> reservationList(Pagenation pagenation);
	List<ReservationTimeVO> reservationResList(Pagenation pagenation);
	
	Integer totalCnt(String lo_no);
	Integer resTotalCnt(String lo_no);
	
	Integer searchCnt(Pagenation pagenation);
	Integer resSearchCnt(Pagenation pagenation);
	
	Integer newNum(ReservationVO rvo);
	Integer newresNum(ReservationTimeVO timevo);
	
	/*검색을 위한것 */
	List<ReservationVO> listAll(Pagenation pagenation);
	List<ReservationTimeVO> reslistAll(Pagenation pagenation);
	//List<ReservationTimeVO> reslistAll(Pagenation pagenation);
	
}
