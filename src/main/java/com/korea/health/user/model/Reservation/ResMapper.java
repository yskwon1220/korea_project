package com.korea.health.user.model.Reservation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface ResMapper {
	
	List<ResTimeVO> selectByRes(ResTimeVO timeVO);	
	//제이슨 출력 
	
	//List<ReservationVO> list();
	//

	int delete(ReservationVO rvo);
	//내 예약 리스트 1개 삭제
	
	List<ReservationVO> MyResList(String user_name);
	//내 모든 예약 리스트
	
	ReservationVO MyDetailList(String re_no);
	//내 예약 리스트1개의 디테일
	
	
	
	//----------------------쌉중요!인서트할 때 단일테이블과 다중테이블을위한 mapper 메소드-----------------------
	
	void insert(ReservationVO rvo);
	//단일테이블 ( 회원한명의 예약)
	
	
	int selectCount();
	//select count(*)  from RESTIME where restime = #{restime} and resdate = #{resdate}
	
	
	void noCount(ResTimeVO timevo);
	//다중테이블 (회원들의 예약) 값이 없을 때 그냥 인서트해준다
	
	
	void addCount(ResTimeVO timevo);
	//값이 이미 존재한다면 nowCnt를 +1해주기 위한 것
	
	
	
}
