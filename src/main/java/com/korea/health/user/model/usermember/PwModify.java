package com.korea.health.user.model.usermember;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("usermemberpwModify")
public class PwModify implements Action {

	@Resource
	UserMemberMapper mapper;

	UserMemberVO mvo;	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		
		
		System.out.println("usermember/pwmodify execute() 실행");
		
		return null;
	}

}
