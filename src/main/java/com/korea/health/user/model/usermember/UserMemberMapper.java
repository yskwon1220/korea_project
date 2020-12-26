package com.korea.health.user.model.usermember;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.user.model.Location.LocationVO;

@Mapper
public interface UserMemberMapper {

	UserMemberVO login();
	List<LocationVO> loCheck();
	void joinReg(UserMemberVO mvo) ;
	UserMemberVO mypage(String user_id); // 이거는 매개변수 이동방식 물어보기 
	Integer modifyMyPage(UserMemberVO mvo);
	Integer pwModify(UserMemberVO mvo);
	UserMemberVO pwCheck();
	UserMemberVO pwCheckOk(UserMemberVO mvo);
	UserMemberVO loginReg(UserMemberVO mvo);
	Integer delete(UserMemberVO mvo);
	UserMemberVO findPw(UserMemberVO mvo);
	UserMemberVO findId(UserMemberVO mvo);
	UserMemberVO idCheck(String user_id);
	UserMemberVO emailCheck(String user_email);
	UserMemberVO telCheck(String user_tel);
	
}
