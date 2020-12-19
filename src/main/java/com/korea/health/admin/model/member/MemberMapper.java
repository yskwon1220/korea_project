package com.korea.health.admin.model.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.admin.model.trainer.TrainerVO;
import com.korea.health.service.Pagenation;
import com.korea.health.user.model.usermember.UserMemberVO;

@Mapper
public interface MemberMapper {
//	List<UserMemberVO> memberList();  //db에 존재하는 고객list
	List<UserMemberVO> memberList(Pagenation pagenation);  
	List<UserMemberVO> listSch(UserMemberVO vo);
	UserMemberVO memberDetail(int user_no); //고객정보
	Integer memberDelete(int vo); //고객 삭제
	Integer modifyAdmin(int user_no);
	Integer modifyUser(int user_no);
	Integer totalCnt();
}
