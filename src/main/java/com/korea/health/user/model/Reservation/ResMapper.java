package com.korea.health.user.model.Reservation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.user.model.Trainer.TrainerVO;


@Mapper
public interface ResMapper {
	List<ResTimeVO> selectByRes(ResTimeVO timeVO);	
	//제이슨 출력 
	
	//List<ReservationVO> list();
	//
	
	List<ReservationVO> MyResList(String user_name);
	//내 모든 예약 리스트

	
	ReservationVO MyDetailList(int re_no);
	//내 예약 리스트1개의 디테일
	
	
	//----------------------쌉중요!인서트할 때 단일테이블과 다중테이블을위한 mapper 메소드-----------------------
	
	void insert(ReservationVO rvo);
	//단일테이블 ( 회원한명의 예약)
	
	
	int selectCount(ResTimeVO timevo);
	//select count(*)  from RESTIME where restime = #{restime} and resdate = #{resdate}
	
	
	void noCount(ResTimeVO timevo);
	//다중테이블 (회원들의 예약) 값이 없을 때 그냥 인서트해준다
	
	
	void addCount(ResTimeVO timevo);
	//값이 이미 존재한다면 nowCnt를 +1해주기 위한 것
	
	
	
	//----------------------쌉중요!delete할 때 단일테이블과 다중테이블을위한 mapper 메소드-----------------------
	
	int delete(ReservationVO rvo);
	//내 예약 리스트 1개 삭제
	
	void MinusCount(ResTimeVO timevo);
	//삭제가 성공되면 , restime테이블에서 update문으로 nowCnt 를 -1 해야한다. 예약을 취소했기 때문에 인원카운트가 작아져야함.
	
	
	
	//---페이징하기 위한 메소드 추가
	List<ReservationVO> PagingList (ResPageInfo resInfoVO);
	
	Integer totalCnt();

	ReservationVO MyDetailList2(int re_no);
	//toomany떠서 새로 만듬..
	
	
	
	
}
