package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermembermodifyMyPage")
public class ModifyMyPage implements Action {

	@Resource
	UserMemberMapper mapper;

	UserMemberVO mvo;	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		String id = (String)map.get("id");
		System.out.println(map.get("id"));
		

		System.out.println("usermember/modifyMyPage execute() 실행");
		
		return mapper.mypage(id);
	}

}
