package com.korea.health.user.model.usermember;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMemberMapper {

	UserMemberVO login();
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
	UserMemberVO idChk(String user_id);
	
}
