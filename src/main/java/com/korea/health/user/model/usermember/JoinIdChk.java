package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.korea.health.provider.Action;

public class JoinIdChk implements Action {

	@Resource
	UserMemberMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("idChk execute() 실행");

		String user_id = String.valueOf(req.getParameter("user_id"));
		System.out.println("user_id:" + user_id);

		UserMemberVO idCheck = mapper.idChk(user_id);
		System.out.println("idCheck : " + idCheck);

		if (idCheck != null) {// 결과 값이 있으면 아이디 존재
			return "{\"rrr\":\"1\"}";
		} else { // 없으면 아이디 존재 X
			System.out.println(" idCheck 는 null");
			return "{\"rrr\":\"0\"}";

		}

	}
}
