package com.korea.health.admin.model.reservation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.admin.model.branch.BranchVO;
import com.korea.health.service.Pagenation;
import com.korea.health.user.model.usermember.UserMemberVO;


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

	
	void MyResMinusCnt(UserMemberVO uvo);
	
	int selectCount(ReservationTimeVO timevo2);
	void noCount(ReservationTimeVO timevo2);
	//다중테이블 (회원들의 예약) 값이 없을 때 그냥 인서트해준다
	void addCount(ReservationTimeVO timevo2);
	//값이 이미 존재한다면 nowCnt를 +1해주기 위한 것
	
}
