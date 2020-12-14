package com.korea.health.user.model.usermember;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMemberMapper {

	

	UserMemberVO login();
	void joinReg(UserMemberVO mvo) ;
	UserMemberVO mypage(String id); // 이거는 매개변수 이동방식 물어보기 
	Integer modifyMyPage(UserMemberVO mvo);
	UserMemberVO pwModify();
	UserMemberVO pwCheck();
	UserMemberVO pwCheckOk(UserMemberVO mvo);
	UserMemberVO loginReg(UserMemberVO mvo);
}
