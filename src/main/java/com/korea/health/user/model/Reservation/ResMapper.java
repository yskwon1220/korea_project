package com.korea.health.user.model.Reservation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.user.model.Trainer.TrainerVO;
import com.korea.health.user.model.usermember.UserMemberVO;


@Mapper
public interface ResMapper {
	List<ResTimeVO> selectByRes(ResTimeVO timeVO);	
	
	List<ReservationVO> MyResList(String user_id);
	//내 모든 예약 리스트
	
	int MyDateSelect2(ReservationVO rvo);
	//내가 선택한 날짜에 대한 조회 ( 이미 존재한다면 예약을 하지못하게 제약을 건다 )
	
	int MyResCnt(UserMemberVO mvo);
	//예약을하기전에 이용권이있는지 조회한다.
	
	
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
	
	
	
	//-------내 결제와 환불이 관련된 메소드------------------------
	
	void MyResMinusCnt(UserMemberVO uvo);
	//내 이용권 1개씩 차감하기 위한 것.
	
	int deleteRes(ReservationVO rvo);
	//내 예약 리스트 모두삭제
	
	void MyResDrop(UserMemberVO mvo);
	//내 예약 이용권 null로 만듬
	
	void MyPaymentInsert(UserMemberVO mvo);
	//내 예약 이용권 횟수만큼 업데이트 시킴
	
	
	
	
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
	
	UserMemberVO userInfo(String user_id);
	

	
}
